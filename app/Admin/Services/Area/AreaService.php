<?php

namespace App\Admin\Services\Area;

use App\Admin\Repositories\Area\AreaRepositoryInterface;
use Illuminate\Http\Request;
use App\Admin\Traits\Setup;

class AreaService implements AreaServiceInterface
{
    use Setup;

    /**
     * Current Object instance
     *
     * @var array
     */
    protected $data;

    protected $repository;

    public function __construct(AreaRepositoryInterface $repository)
    {
        $this->repository = $repository;
    }

    public function store(Request $request)
    {
        $this->data = $request->validated();
        return $this->repository->create($this->data);
    }

    public function update(Request $request)
    {
        $this->data = $request->validated();
        return $this->repository->update($this->data['id'], $this->data);
    }

    public function delete($id): bool
    {
        return $this->repository->delete($id);

    }

}
