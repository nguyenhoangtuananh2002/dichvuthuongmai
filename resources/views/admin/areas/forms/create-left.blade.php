<div class="col-12 col-md-9">
    <div class="card">
        <div class="row card-body">
            <!-- address -->
            <div class="col-12">
                <div class="mb-3">
                    <x-input-pick-address :label="trans('address')"
                                          name="address"
                                          :placeholder="trans('pickAddress')"
                                          :required="true"/>
                    <x-input type="hidden" name="lat"/>
                    <x-input type="hidden" name="lng"/>
                </div>
            </div>
            <!-- title -->
            <div class="col-12">
                <div class="mb-3">
                    <label class="control-label">@lang('name')</label>
                    <x-input name="name" :value="old('name')" :required="true" :placeholder="__('name')"/>
                </div>
            </div>
            <!-- position -->
            <div class="col-12">
                <div class="mb-3">
                    <label class="control-label">@lang('position'):</label>
                    <x-input type="number" name="position" :value="old('position', 0)" :required="true"/>
                </div>
            </div>
        </div>
    </div>
</div>
