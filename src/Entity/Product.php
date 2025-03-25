<?php

namespace App\Entity;

use App\Repository\ProductRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ProductRepository::class)]
class Product
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $nom = null;

    #[ORM\Column(type: Types::TEXT, nullable: true)]
    private ?string $description = null;

    #[ORM\Column]
    private ?int $price = null;

    #[ORM\Column(nullable: true)]
    private ?int $stock_XS = null;

    #[ORM\Column(nullable: true)]
    private ?int $stock_S = null;

    #[ORM\Column(nullable: true)]
    private ?int $stock_M = null;

    #[ORM\Column(nullable: true)]
    private ?int $stock_L = null;

    #[ORM\Column(nullable: true)]
    private ?int $stock_XL = null;

    /**
     * @var Collection<int, SubCategory>
     */
    #[ORM\ManyToMany(targetEntity: SubCategory::class, inversedBy: 'products')]
    private Collection $subCategories;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $image = null;

    public function __construct()
    {
        $this->subCategories = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): static
    {
        $this->nom = $nom;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getPrice(): ?int
    {
        return $this->price;
    }

    public function setPrice(int $price): static
    {
        $this->price = $price;

        return $this;
    }

    public function getStockXS(): ?int
    {
        return $this->stock_XS;
    }

    public function setStockXS(?int $stock_XS): static
    {
        $this->stock_XS = $stock_XS;

        return $this;
    }

    public function getStockS(): ?int
    {
        return $this->stock_S;
    }

    public function setStockS(?int $stock_S): static
    {
        $this->stock_S = $stock_S;

        return $this;
    }

    public function getStockM(): ?int
    {
        return $this->stock_M;
    }

    public function setStockM(?int $stock_M): static
    {
        $this->stock_M = $stock_M;

        return $this;
    }

    public function getStockL(): ?int
    {
        return $this->stock_L;
    }

    public function setStockL(?int $stock_L): static
    {
        $this->stock_L = $stock_L;

        return $this;
    }

    public function getStockXL(): ?int
    {
        return $this->stock_XL;
    }

    public function setStockXL(?int $stock_XL): static
    {
        $this->stock_XL = $stock_XL;

        return $this;
    }

    /**
     * @return Collection<int, SubCategory>
     */
    public function getSubCategories(): Collection
    {
        return $this->subCategories;
    }

    public function addSubCategory(SubCategory $subCategory): static
    {
        if (!$this->subCategories->contains($subCategory)) {
            $this->subCategories->add($subCategory);
        }

        return $this;
    }

    public function removeSubCategory(SubCategory $subCategory): static
    {
        $this->subCategories->removeElement($subCategory);

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(?string $image): static
    {
        $this->image = $image;

        return $this;
    }
}
