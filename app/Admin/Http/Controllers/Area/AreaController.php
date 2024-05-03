<?php

namespace App\Admin\Http\Controllers\Area;

use App\Admin\Http\Controllers\Controller;
use App\Admin\Http\Requests\Category\CategoryRequest;
use App\Admin\Repositories\Area\AreaRepositoryInterface;
use App\Admin\Services\Area\AreaServiceInterface;
use App\Admin\DataTables\Category\CategoryDataTable;
use App\Enums\DefaultStatus;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;

class AreaController extends Controller
{
    public function __construct(
        AreaRepositoryInterface $repository,
        AreaServiceInterface    $service
    )
    {

        parent::__construct();

        $this->repository = $repository;

        $this->service = $service;

    }

    public function getView(): array
    {
        return [
            'index' => 'admin.areas.index',
            'create' => 'admin.areas.create',
            'edit' => 'admin.areas.edit'
        ];
    }

    public function getRoute(): array
    {
        return [
            'index' => 'admin.area.index',
            'create' => 'admin.area.create',
            'edit' => 'admin.area.edit',
            'delete' => 'admin.area.delete'
        ];
    }

    public function index(CategoryDataTable $dataTable)
    {
        return $dataTable->render($this->view['index'], [
            'active' => [
                'Hoạt động' => 'Hoạt động',
                'Ẩn' => 'Ẩn'
            ]
        ]);
    }

    public function create(): Factory|View|Application
    {

        return view($this->view['create'], [
            'breadcrumbs' => $this->crums->add(__('add')),
            'status' => DefaultStatus::asSelectArray()
        ]);
    }

    public function store(CategoryRequest $request): RedirectResponse
    {

        $instance = $this->service->store($request);

        return to_route($this->route['edit'], $instance->id);

    }

    public function edit($id)
    {
        $instance = $this->repository->findOrFail($id);
        return view(
            $this->view['edit'], [
                'category' => $instance,
            ]
        );
    }

    public function update(CategoryRequest $request): RedirectResponse
    {

        $this->service->update($request);

        return back()->with('success', __('notifySuccess'));

    }

    public function delete($id): RedirectResponse
    {

        $this->service->delete($id);

        return to_route($this->route['index'])->with('success', __('notifySuccess'));

    }
}
