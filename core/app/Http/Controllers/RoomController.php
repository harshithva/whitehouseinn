<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\AppliedCouponCode;
use App\Model\CouponMaster;
use App\Model\Gateway;
use App\Model\PaidService;
use App\Model\Payment;
use App\Model\Reservation;
use App\Model\ReservationNight;
use App\Model\ReservationPaidService;
use App\Model\ReservationTax;
use App\Model\Room;
use App\Model\RoomType;
use App\Model\TaxManager;
use App\Model\Transaction;
use App\Model\User;
use Carbon\Carbon;
use App\Http\Controllers\Controller;
use DB;
use Illuminate\Validation\ValidationException;

class RoomController extends Controller
{
    /**
     * @var Resarvation
     */
    private $resarvation;
    /**
     * @var User
     */
    private $guests;
    /**
     * @var RoomType
     */
    private $roomType;
    /**
     * @var TaxManager
     */
    private $taxManager;
    /**
     * @var CouponMaster
     */
    private $couponMaster;
    /**
     * @var Reservation
     */
    private $reservation;
    /**
     * @var ReservationNight
     */
    private $night;
    /**
     * @var ReservationTax
     */
    private $reservationTax;
    /**
     * @var ReservationPaidService
     */
    private $res_paid_service;
    /**
     * @var AppliedCouponCode
     */
    private $appliedCouponCode;
    /**
     * @var Gateway
     */
    private $gateway;
    /**
     * @var Payment
     */
    private $payment;
    /**
     * @var PaidService
     */
    private $paidService;

    public function __construct(
                                User $guests,
                                RoomType $roomType,
                                TaxManager $taxManager,
                                CouponMaster $couponMaster,
                                Reservation $reservation,
                                ReservationNight $night,
                                ReservationTax $reservationTax,
                                ReservationPaidService $res_paid_service,
                                AppliedCouponCode $appliedCouponCode,
                                Gateway $gateway,
                                Payment $payment,PaidService $paidService)
    {
        $this->guests = $guests;
        $this->roomType = $roomType;
        $this->taxManager = $taxManager;
        $this->couponMaster = $couponMaster;
        $this->reservation = $reservation;
        $this->night = $night;
        $this->reservationTax = $reservationTax;
        $this->res_paid_service = $res_paid_service;
        $this->appliedCouponCode = $appliedCouponCode;
        $this->gateway = $gateway;
        $this->payment = $payment;
        $this->paidService = $paidService;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $rooms = Room::all();
        $reservation = $this->reservation->find($id);
        $night =  $reservation->night->groupBy('date');
        return view('backend.admin.reservation.edit_hotel',compact('reservation', 'night', 'rooms'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'roomnumber' => 'required'
        ]);

        // $reservation_room = ReservationNight::find($id);
        // $reservation_room->room_id = $request->roomnumber;
        // $reservation_room->save();

        $reservation_room = ReservationNight::where('reservation_id', '=',  $id)->first();
        $reservation_room->room_id = $request->roomnumber;
        $reservation_room->save();

        $reservation = $this->reservation->findOrFail($id);
        $paid_services = $this->paidService->whereStatus(1)->get();
        $gateways = $this->gateway->whereStatus(1)->where('is_offline',1)->get();
        return view('backend.admin.reservation.view',compact('reservation','gateways','paid_services'));
}

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
