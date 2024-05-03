<div class="col-12 col-md-9">
    <div class="card">
        <div class="row card-body">
            <!-- name -->
            <div class="col-12">
                <div class="mb-3">
                    <label class="control-label">@lang('name')</label>
                    <x-input name="name" :value="$area->name" :required="true" :placeholder="__('name')" />
                </div>
            </div>
            <!-- position -->
            <div class="col-12">
                <div class="mb-3">
                    <label class="control-label">@lang('position'):</label>
                    <x-input type="number" name="position" :value="$area->position" :required="true" />
                </div>
            </div>
        </div>
    </div>
</div>
