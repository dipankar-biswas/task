<?php

namespace App\Exports;

use App\Models\Product;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ProductExport implements FromCollection,WithHeadings
{
    public function headings(): array
    {
        return [
            'id',
            'product_name',
            'product_price',
            'product_description',
            'product_image',
        ];
    }
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        // return Product::all();
        return collect(Product::getProducts());
    }
}
