@extends('layouts.app')

@section('title', 'Tambah Alternatif')

@section('content')
    <h1>Tambah Alternatif Baru</h1>

    <form action="{{ route('alternatif.store') }}" method="POST">
        @include('alternatif._form', ['tombol' => 'Tambah'])
    </form>
@endsection
