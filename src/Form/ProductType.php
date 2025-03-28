<?php

namespace App\Form;

use App\Entity\Product;
use App\Entity\SubCategory;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;


class ProductType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('image',FileType::class,[
                'label' => 'image du produit',
                'mapped' =>false,
                'required' =>false,
                'constraints' =>[
                    new File([
                        'maxSize'=>'1024k',
                        'mimeTypes'=>[
                            'image/jpg',
                            'image/png',
                            'image/jpeg'
                        ],
                        'maxSizeMessage' =>'Votre image ne doit pas dépasser 1024ko',
                        'mimeTypesMessage'=>'Votre image doit être au format valide (png,jpg,jpeg)'
                    ])
                ]

            ])
            ->add('nom')
            ->add('description')
            ->add('price')
            ->add('stock_XS')
            ->add('stock_S')
            ->add('stock_M')
            ->add('stock_L')
            ->add('stock_XL')
            ->add('subCategories', EntityType::class, [
                'class' => SubCategory::class,
'choice_label' => 'nom',
'multiple' => true,
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Product::class,
        ]);
    }
}
