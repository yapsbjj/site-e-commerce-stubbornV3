<?php

namespace App\Form;

use App\Entity\Order;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class OrderType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('firstName',null,[
                'attr'=>[
                    'class'=>'form form-control'
                ]
            ])
            ->add('lastName',null,[
                'attr'=>[
                    'class'=>'form form-control'
                ]
            ])
            ->add('phone',null,[
                'attr'=>[
                    'class'=>'form form-control'
                ]
            ])
            ->add('adresse',null,[
                'attr'=>[
                    'class'=>'form form-control'
                ]
            ])
            ->add('city',null,[
                'attr'=>[
                    'class'=>'form form-control'
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Order::class,
        ]);
    }
}
