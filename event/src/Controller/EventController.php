<?php

namespace App\Controller;

use App\Entity\Event;
use App\Form\EventType;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
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
    public function create(Request $request, ManagerRegistry $doctrine): Response
    {
        $event = new event();
        $form = $this->createForm(eventType::class, $event);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $now = new \DateTime("now");

            $event = $form->getData();
            $event->setStartDate($now);  
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash("success", "Event has been added");

            return $this->redirectToRoute('app_event');
        }
        return $this->render('event/create.html.twig', ['form' => $form->createView()]);
    }

    

    #[Route('/edit/{id}', name: 'app_event_edit')]
    public function edit(Request $request, ManagerRegistry $doctrine, $id): Response
    {
        $event = $doctrine->getRepository(event::class)->find($id);
        $form = $this->createForm(eventType::class, $event);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $now = new \DateTime('now');
            $event = $form->getData();
            $event->setStartDate($now);
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();
            $this->addFlash("success", "Event has been updated");

            return $this->redirectToRoute('app_event');
        }

        return $this->render('event/edit.html.twig', ['form' => $form->createView()]);
    }

    #[Route('/details/{id}', name: 'app_event_details')]
    public function details(ManagerRegistry $doctrine, $id): Response
    {
        $event = $doctrine->getRepository(event::class)->find($id);

        return $this->render('event/details.html.twig', ['event' => $event]);
    }


    #[Route('/delete/{id}', name: 'app_event_delete')]
    public function delete($id, ManagerRegistry $doctrine): Response
    {

        $event = $doctrine->getRepository(event::class)->find($id);
        $em= $doctrine->getManager();
        $em->remove($event);
        $em->flush();
        $this->addFlash("success", "event has been removed");
        
        return $this->redirectToRoute('app_event');
    }

    #[Route('/music', name: 'music')]
    public function music(ManagerRegistry $doctrine): Response
    {
        $filtering  = $doctrine->getManager();
        $music = $filtering ->getRepository(Event::class)->findBy(['type' => 'music']);
        return $this->render('event/music.html.twig', [
            "events" => $music
        ]);
    }

    #[Route('/theater', name: 'theater')]
    public function theater(ManagerRegistry $doctrine): Response
    {
        $filtering  = $doctrine->getManager();
        $theater = $filtering ->getRepository(Event::class)->findBy(['type' => 'theater']);
        return $this->render('event/theater.html.twig', [
            "events" => $theater
        ]);
    }

    #[Route('/sport', name: 'sport')]
    public function sport(ManagerRegistry $doctrine): Response
    {
        $filtering  = $doctrine->getManager();
        $sport = $filtering ->getRepository(Event::class)->findBy(['type' => 'sport']);
        return $this->render('event/sport.html.twig', [
            "events" => $sport
        ]);
    }

}