<?php

namespace App\Controller;

use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

use App\Entity\Event;

use App\Form\EventType;
use App\Service\FileUploader;


class CrudController extends AbstractController
{

   #[Route('/crud', name: 'app_crud')]
   public function home(ManagerRegistry $doctrine): Response
   {
       $list = $doctrine->getManager()->getRepository(Event::class)->findAll();
       # dd($list);

       return $this->render('crud/index.html.twig', ['events' => $list]);
   }

    ###[Route('/crud', name: 'app_crud')]
    ##public function index(): Response
    ##{
    ##    return $this->render('crud/index.html.twig', [
    ##        'controller_name' => 'CrudController',
    ##    ]);
    ##}

    #[Route('/create', name: 'create')]
    public function createProduct(Request $request, ManagerRegistry $doctrine, FileUploader $fileUploader): Response
    {
        $event = new Event();
        // dd($crud);
        $form = $this->createForm(EventType::class, $event);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){

            $event = $form->getData();
            $pictureFile = $form->get('photo')->getData();
            //pictureUrl is the name given to the input field
            if ($pictureFile) {
              $pictureFileName = $fileUploader->upload($pictureFile);
              $event->setPhoto($pictureFileName);
            }
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash(
                "notice", "Library Added"
            );
            return $this->redirectToRoute("app_crud");
            # dd($crud);
        }


        return $this->render('crud/create.html.twig', [
            "form" => $form->createView()
        ]);
    }
    
  
    #[Route('/details/{id}', name: 'details')]
    public function details($id, ManagerRegistry $doctrine): Response
    {
        $list = $doctrine->getManager()->getRepository(Event::class)->find($id);
        return $this->render('crud/details.html.twig', [
            "event" => $list
        ]);
    }


    #[Route('/edit/{id}', name: 'edit')]
    public function edit(Request $request, ManagerRegistry $doctrine, FileUploader $fileUploader, $id): Response
    {
        $event = $doctrine->getRepository(Event::class)->find($id);
        // dd($crud);
        $form = $this->createForm(EventType::class, $event);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $pictureFile = $form->get('photo')->getData();
            //pictureUrl is the name given to the input field
            if ($pictureFile) {
              $pictureFileName = $fileUploader->upload($pictureFile);
              $event->setPhoto($pictureFileName);
            }
            $event = $form->getData();
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash(
                "notice", "Library Added"
            );
            return $this->redirectToRoute("app_crud");
            # dd($crud);
        }


        return $this->render('crud/edit.html.twig', [
            "form" => $form->createView()
        ]);
    }

    #[Route('/delete/{id}', name: 'delete')]
    public function delete(ManagerRegistry $doctrine, $id): Response
    {
        $em = $doctrine->getManager();
         $crud = $em->getRepository('App:Event')->find($id);
         $em->remove($crud);
         
         $em->flush();
         $this->addFlash(
             'notice',
             'Todo Removed'
         );  
         return $this->redirectToRoute('app_crud');
    }
    
    #[Route('/music', name: 'music')]
    public function music(ManagerRegistry $doctrine): Response
    {
        $lol = $doctrine->getManager();
        $list = $lol->getRepository(Event::class)->findBy(['type' => 'music']);
        
        //dd($list);
        return $this->render('event/music.html.twig', [
            "events" => $list
        ]);
    }
    
    #[Route('/dance', name: 'dance')]
    public function dance(ManagerRegistry $doctrine): Response
    {
        $lol = $doctrine->getManager();
        $list = $lol->getRepository(Event::class)->findBy(['type' => 'dance']);
        
        //dd($list);
        return $this->render('event/dance.html.twig', [
            "events" => $list
        ]);
    } 

    #[Route('/conferences', name: 'conferences')]
    public function conferences(ManagerRegistry $doctrine): Response
    {
        $lol = $doctrine->getManager();
        $list = $lol->getRepository(Event::class)->findBy(['type' => 'conferences']);
        
        //dd($list);
        return $this->render('event/conferences.html.twig', [
            "events" => $list
        ]);
    } 




}
