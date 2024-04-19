# Hamming_encoder_decoder
a simple implementation of error detection using Hamming code (encoder and decoder)

## REFFER inst_enc_dec_tb.v for testbench (this is the obtained waveform)
![image](https://github.com/ARX-0/Hamming_encoder_decoder/assets/143102635/8f2921b8-c000-46e2-bfb8-177e1fa03e5f)

the check bits are 

c1->0

c2->0

c3->0

c4->0

## Reffer tb_hamm_enc.v for testbench (this is the obtained waveform)
![Screenshot 2024-04-18 214019](https://github.com/ARX-0/Hamming_encoder_decoder/assets/143102635/48fb6ad6-120f-432d-bc89-fd6e9c6f25c9)

<!DOCTYPE html>
<html>
<body>

<h2>Binary Number Table</h2>

<table>
  <tr>
    <th>D8</th>
    <th>D7</th>
    <th>D6</th>
    <th>D5</th>
    <th>p4</th>
    <th>D4</th>
    <th>D3</th>
    <th>D2</th>
    <th>p3</th>
    <th>D1</th>
    <th>p2</th>
    <th>p1</th>
  </tr>
  <tr>
    <td>1</td>
    <td>1</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>1</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>1</td>
  </tr>
<tr> <th>12</th>
  <th>11</th>
    <th>10</th>
    <th>9</th>
    <th>8</th>
    <th>7</th>
    <th>6</th>
    <th>5</th>
    <th>4</th>
    <th>3</th>
    <th>2</th>
    <th>1</th>

</tr>
</table>

</body>
</html>


thus the parity bits are

p1->1

p2->0

p3->0

p4->0
