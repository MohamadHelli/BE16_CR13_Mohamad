<?php

namespace App\Controller;

use App\Entity\Event;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class EventController extends AbstractController
{
    #[Route('/', name: 'app_event')]
    public function index(ManagerRegistry $doctrine): Response
    {

        $events = $doctrine->getRepository(Event::class)->findAll();
        return $this->render('event/index.html.twig', [
            "events" => $events
        ]);
    }


    #[Route('/create', name: 'app_event_create')]
    public function create(): Response
    {
        return $this->render('event/create.html.twig', [
        ]);
    }

    #[Route('/edit/{id}', name: 'app_event_edit')]
    public function edit(): Response
    {
        return $this->render('event/edit.html.twig', [
        ]);
    }

    #[Route('/details/{id}', name: 'app_event_details')]
    public function details(): Response
    {
        return $this->render('event/details.html.twig', [
        ]);
    }


}
