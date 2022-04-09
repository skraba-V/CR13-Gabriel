<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;



use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\HttpFoundation\Request;

use App\Entity\Event;

use App\Form\EventType;
use App\Service\FileUploader;

class EventController extends AbstractController
{

    #[Route('/', name: 'app')]
    public function home(ManagerRegistry $doctrine): Response
    {

        $list = $doctrine->getManager()->getRepository(Event::class)->findAll();
        # dd($list);

  
        return $this->render('event/index.html.twig', ['events' => $list]);


    }
    
   ##[Route('/event', name: 'app_event')]
   #public function index(): Response
   #{
   #    return $this->render('event/index.html.twig', [
   #        'controller_name' => 'EventController',
   #    ]);
   #}
    
}
