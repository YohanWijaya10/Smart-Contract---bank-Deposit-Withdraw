Bank Smart Contract

Bank adalah *smart contract* sederhana berbasis Ethereum yang memungkinkan pengguna untuk:
1. Menyetor Ether ke kontrak.
2. Menarik Ether dari kontrak.
3. Melihat saldo mereka.

---

Fitur
1. Deposit Ether
- Fungsi: `topUp()`
- Pengguna dapat menyetor Ether ke dalam kontrak.
- Saldo pengguna akan bertambah sesuai jumlah Ether yang disetor.
- **Event**: Setiap transaksi deposit akan dicatat dengan event `Deposit`.

2. Withdraw Ether
- Fungsi: `tarikDana(uint _tarik)`
- Pengguna dapat menarik Ether dari kontrak.
- Saldo pengguna akan berkurang sesuai jumlah Ether yang ditarik.
- Fungsi memastikan saldo pengguna mencukupi sebelum melakukan penarikan.
- **Event**: Setiap transaksi penarikan akan dicatat dengan event `Withdrawal`.

---

Cara Menggunakan
1. **Deploy Kontrak**
   - Gunakan *Remix IDE* atau *Hardhat* untuk mendepoy kontrak ke jaringan Ethereum.

2. **Deposit Ether**
   - Panggil fungsi `topUp()` dengan mengirimkan Ether.
   - Gunakan wallet seperti Metamask untuk mengirim Ether ke kontrak.

3. **Cek Saldo**
   - Gunakan fungsi `balance` dengan alamat Anda untuk melihat saldo.

4. **Withdraw Ether**
   - Panggil fungsi `tarikDana(uint _tarik)` dengan jumlah yang ingin Anda tarik (dalam Ether).

Validasi
- Deposit minimal 1 Wei.
- Penarikan hanya bisa dilakukan jika saldo mencukupi.

---

Contoh Event

Deposit
```json
{
  "event": "Deposit",
  "args": {
    "user": "0x123...abc",
    "amount": "1000000000000000000" // 1 Ether dalam Wei
  }
}
