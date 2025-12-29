@extends('layouts.app')

@section('title', 'Data Alternatif')

@section('content')
    <div style="display: flex; justify-content: space-between; align-items: center;">
        <h1>Data Alternatif (Guru)</h1>
        <a href="{{ route('alternatif.create') }}" class="btn">Tambah Alternatif</a>
    </div>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nama Alternatif</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($alternatifs as $alternatif)
                <tr>
                    <td>{{ $alternatif->id }}</td>
                    <td>{{ $alternatif->nama_alternatif }}</td>
                    <td class="action-links">
                        <a href="{{ route('alternatif.edit', $alternatif) }}" class="btn btn-sm">Edit</a>
                        <form action="{{ route('alternatif.destroy', $alternatif) }}" method="POST" style="display: inline-block;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus alternatif ini?')">Hapus</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="3">Tidak ada data alternatif.</td>
                </tr>
            @endforelse
        </tbody>
    </table>
@endsection
