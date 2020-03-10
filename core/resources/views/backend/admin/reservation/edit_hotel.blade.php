@extends('backend.master')
@section('title',"Channel Manager")
@section('content')
<h3 class="mb-3">Edit Room</h3>
<form action="{{action('RoomController@update', $reservation['id']) }}" method="post">
@csrf

<div class="form-group">
    <label for="exampleFormControlSelect1">Select Room</label>
    <select class="form-control" id="exampleFormControlSelect1" name="roomnumber">
        @foreach ($rooms as $room)
        <option value="{{$room->id}}">{{$room->number}}</option>
        @endforeach
    </select>
  </div>
  <input type="hidden" name="_method" value="PUT">
  <div>
    <button type="submit" class="btn btn-secondary mt-2 ml-2">Submit</button>
  </div>
 
</form>

                
@endsection