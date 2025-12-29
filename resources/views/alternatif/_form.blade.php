@csrf
<div class="form-group">
    <label for="nama_alternatif">Nama Alternatif (Guru)</label>
    <input type="text" id="nama_alternatif" name="nama_alternatif" value="{{ old('nama_alternatif', $alternatif->nama_alternatif ?? '') }}" required>
    @error('nama_alternatif')
        <div style="color: red; font-size: 0.9em; margin-top: 5px;">{{ $message }}</div>
    @enderror
</div>

<div>
    <button type="submit" class="btn">{{ $tombol ?? 'Simpan' }}</button>
    <a href="{{ route('alternatif.index') }}" class="btn" style="background-color: #7f8c8d;">Batal</a>
</div>
