@extends('backend.master')
@section('title',"Payment Log")
@section('content')
      <div class="container mt-3">
        <div class="row">
          <div class="col">
            <div class="p-3 mb-2 bg-danger text-white text-center font-weight-bold">Total Expense : ₹ {{$expenses->total}}</div>
          </div>
        </div>
      </div>
        <div class="container mt-3 text-center">
            <form method="POST" action="/expenses">
              {{ csrf_field() }}

                @if ($errors->any())
                <div class="alert alert-danger mt-3">
                    <ul>
                     @foreach ($errors->all() as $error)
                    <li>{{$error}}</li>
                     @endforeach
                    </ul>
                  </div>
                  @endif

                <div class="form-row">
                  <div class="col">
                    <input type="text" name="name" class="form-control p-4" placeholder="Expense">
                  </div>
                  <div class="col">
                    <input type="text" name="amount" class="form-control p-4" placeholder="Amount">
                  </div>
                  <div class="col">
                    <button type="submit" class="btn btn-primary">Add Expense</button>
                  </div>
                </div>
              </form>
        </div>

        <div class="container mt-5">
            <div class="row">
                <div class="col">
                    <table class="table">
                        <thead class="thead bg-success text-white">
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">Expense</th>
                            <th scope="col">Amount</th>
                            <th scope="col">Date</th>
                            <th scope="col">Action</th>
                          </tr>
                        </thead>
                        <tbody>
                          @if (count($expenses) >= 1)                             
                            @foreach ($expenses as $expense)
                            <tr>
                                <th scope="row">{{$expense->id}}</th>
                                <td>{{$expense->name}}</td>
                                <td>{{$expense->amount}}</td>
                                <td>{{$expense->created_at}}</td>
                            <td>
                              <form action="{{action('ExpenseController@destroy', $expense['id']) }}" method="post">
                                @csrf
                                <input type="hidden" name="_method" value="DELETE">
                              <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                            </td>
                                
                              </tr>
                            @endforeach
                            @else
                               <p>No expenses found.</p>
                            @endif
                        </tbody>
                      </table>
                    
                </div>
            </div>
        </div>
  @endsection