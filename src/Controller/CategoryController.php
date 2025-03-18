<?php

namespace App\Controller;

use App\Entity\Category;
use App\Form\CategoryFormType;
use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Doctrine\ORM\EntityManagerInterface;

final class CategoryController extends AbstractController{
    #[Route('/admin/category', name: 'app_category')]
    public function index(CategoryRepository $categoryRepository): Response
    {

        $categories = $categoryRepository->findAll();
        
        return $this->render('category/index.html.twig', [
            'categories'=>$categories
        ]);
    }

        #[Route('/admin/category/new', name: 'app_category_new')]
        public function addCategory(EntityManagerInterface $entityManager, Request $request):Response
        {   
            $category = new Category();

            $form = $this->createForm(CategoryFormType::class, $category);
            $form->handleRequest($request);

            if($form->isSubmitted() && $form->isValid()){
                
                $entityManager->persist($category);
                $entityManager->flush();

                $this->addFlash('success','catégorie crée avec success');
                return $this->redirectToRoute('app_category');
            }
            return $this->render('category/new.html.twig',['form'=>$form->createView()]);

            
        }

         #[Route('/admin/category/{id}/update', name: 'app_category_update')]
         public function update(Category $category, EntityManagerInterface $entityManager, Request $request):Response
         {
            $form = $this->createForm(CategoryFormType::class, $category);
            $form->handleRequest($request);

            if($form->isSubmitted() && $form->isValid()){
                $entityManager->flush();

                $this->addFlash('success','catégorie modifiée avec success');
                return $this->redirectToRoute('app_category');
            }

            return $this->render('category/update.html.twig',['form'=>$form->createView()]);
         }

         #[Route('/admin/category/{id}/delete', name: 'app_category_delete')]
         public function delete(Category $category, EntityManagerInterface $entityManager):Response
         {
            $entityManager->remove($category);
            $entityManager->flush();

            $this->addFlash('danger','catégorie supprimée avec success');
            return $this->redirectToRoute('app_category');
         }
}

