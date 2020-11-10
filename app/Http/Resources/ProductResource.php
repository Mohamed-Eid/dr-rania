<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $images = ImageResource::collection($this->images);
        $all_images = [];
        foreach ($images as $image) {
            $all_images[] = $image->image;
        }
        
        $videos = VideoResource::collection($this->videos);
        $all_videos = [];
        foreach ($videos as $video) {
            $all_videos[] = $video->video;
        }
        
        
        $special_size = [];
        if($this->tafsil)
        {
            if($this->length_cost!=null || $this->length_cost!=0){
                $special_size[] = [
                    'id' => 1,
                    'cost'=>$this->length_cost
                    ];
            }
            if($this->width_cost!=null || $this->width_cost!=0){
                $special_size[] = [
                    'id' => 2,
                    'cost'=>$this->width_cost
                    ];
            }
            if($this->height_cost!=null || $this->height_cost!=0){
                $special_size[] = [
                    'id' => 3,
                    'cost'=>$this->height_cost
                    ];
            }
            if($this->depth_cost!=null || $this->depth_cost!=0){
                $special_size[] = [
                    'id' => 4,
                    'cost'=>$this->depth_cost
                    ];
            }
        }
        return [
            'id' => $this->id,
            'name' => $this->translate(app()->getLocale())->name,
            'sort' => $this->sort,
            'image_path'  => $this->image == 'default.png' ? $all_images[0] : $this->image_path,
            'images'      => $all_images,
            'videos'      => $all_videos,
            'rate'       => $this->rate,
            'rates'      => RateResource::collection($this->rates),
            'tafsil'     => $this->tafsil == 1 ? true : false,
            'currency'   => $this->city->currency, 
            'description' => $this->description ?? '',
            'price'      => $this->lowest_price(),
            'discount'   => $this->discount,
            'price_after_discount' => ($this->lowest_price() - ($this->lowest_price()*$this->discount/100)),
            'sizes'       => SizeResource::collection($this->sizes),
            'details'     => DetailResource::collection($this->details->sortBy('sort')),
            'special_size' => $special_size,
        ];
    }
}
