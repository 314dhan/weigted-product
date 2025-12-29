@csrf
<div class="form-group">
    <label for="nama_kriteria">Nama Kriteria</label>
    <input type="text" id="nama_kriteria" name="nama_kriteria" value="{{ old('nama_kriteria', $kriteria->nama_kriteria ?? '') }}" required>
    @error('nama_kriteria')
        <div style="color: red; font-size: 0.9em; margin-top: 5px;">{{ $message }}</div>
    @enderror
</div>

<div class="form-group">
    <label for="atribut">Atribut</label>
    <select id="atribut" name="atribut" required>
        <option value="benefit" {{ old('atribut', $kriteria->atribut ?? '') == 'benefit' ? 'selected' : '' }}>Benefit</option>
        <option value="cost" {{ old('atribut', $kriteria->atribut ?? '') == 'cost' ? 'selected' : '' }}>Cost</option>
    </select>
    @error('atribut')
        <div style="color: red; font-size: 0.9em; margin-top: 5px;">{{ $message }}</div>
    @enderror
</div>

<div class="form-group">
    <label for="bobot">Bobot</label>
    <input type="number" id="bobot" name="bobot" value="{{ old('bobot', $kriteria->bobot ?? '') }}" required step="0.01">
    @error('bobot')
        <div style="color: red; font-size: 0.9em; margin-top: 5px;">{{ $message }}</div>
    @enderror
</div>

<div>
    <button type="submit" class="btn">{{ $tombol ?? 'Simpan' }}</button>
    <a href="{{ route('kriteria.index') }}" class="btn" style="background-color: #7f8c8d;">Batal</a>
</div>
