<?php

namespace App\Admin\Repositories\Area;

use App\Admin\Repositories\EloquentRepository;
use App\Admin\Repositories\Attribute\AttributeRepositoryInterface;
use App\Models\Area;

class AreaRepository extends EloquentRepository implements AreaRepositoryInterface
{


    public function getModel(): string
    {
        return Area::class;
    }

}
