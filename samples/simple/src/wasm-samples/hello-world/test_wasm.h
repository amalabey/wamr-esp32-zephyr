unsigned char test_wasm[] = {
  0x00, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00, 0x00, 0x0d, 0x06, 0x64,
  0x79, 0x6c, 0x69, 0x6e, 0x6b, 0xc0, 0x21, 0x04, 0x00, 0x00, 0x00, 0x01,
  0x0e, 0x03, 0x60, 0x01, 0x7f, 0x00, 0x60, 0x02, 0x7f, 0x7f, 0x01, 0x7f,
  0x60, 0x00, 0x00, 0x02, 0x4a, 0x04, 0x03, 0x65, 0x6e, 0x76, 0x0b, 0x5f,
  0x70, 0x72, 0x69, 0x6e, 0x74, 0x5f, 0x74, 0x65, 0x73, 0x74, 0x00, 0x00,
  0x03, 0x65, 0x6e, 0x76, 0x0d, 0x5f, 0x74, 0x68, 0x72, 0x65, 0x61, 0x64,
  0x5f, 0x73, 0x6c, 0x65, 0x65, 0x70, 0x00, 0x00, 0x03, 0x65, 0x6e, 0x76,
  0x0d, 0x5f, 0x5f, 0x6d, 0x65, 0x6d, 0x6f, 0x72, 0x79, 0x5f, 0x62, 0x61,
  0x73, 0x65, 0x03, 0x7f, 0x00, 0x03, 0x65, 0x6e, 0x76, 0x06, 0x6d, 0x65,
  0x6d, 0x6f, 0x72, 0x79, 0x02, 0x00, 0x01, 0x03, 0x03, 0x02, 0x01, 0x02,
  0x06, 0x0b, 0x02, 0x7f, 0x01, 0x41, 0x00, 0x0b, 0x7f, 0x01, 0x41, 0x00,
  0x0b, 0x07, 0x1e, 0x02, 0x12, 0x5f, 0x5f, 0x70, 0x6f, 0x73, 0x74, 0x5f,
  0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x74, 0x69, 0x61, 0x74, 0x65, 0x00,
  0x03, 0x05, 0x5f, 0x6d, 0x61, 0x69, 0x6e, 0x00, 0x02, 0x0a, 0x4f, 0x02,
  0x3e, 0x00, 0x23, 0x00, 0x41, 0x80, 0x20, 0x6a, 0x28, 0x02, 0x00, 0x21,
  0x00, 0x20, 0x00, 0x10, 0x00, 0x03, 0x40, 0x23, 0x00, 0x41, 0x80, 0x20,
  0x6a, 0x28, 0x02, 0x00, 0x21, 0x00, 0x20, 0x00, 0x41, 0x01, 0x6a, 0x21,
  0x01, 0x23, 0x00, 0x41, 0x80, 0x20, 0x6a, 0x20, 0x01, 0x36, 0x02, 0x00,
  0x20, 0x00, 0x10, 0x00, 0x41, 0xe8, 0x07, 0x10, 0x01, 0x0c, 0x00, 0x00,
  0x0b, 0x00, 0x0b, 0x0e, 0x00, 0x23, 0x00, 0x24, 0x01, 0x23, 0x01, 0x41,
  0x80, 0x20, 0x6a, 0x24, 0x02, 0x0b, 0x00, 0x3f, 0x04, 0x6e, 0x61, 0x6d,
  0x65, 0x01, 0x38, 0x04, 0x00, 0x0b, 0x5f, 0x70, 0x72, 0x69, 0x6e, 0x74,
  0x5f, 0x74, 0x65, 0x73, 0x74, 0x01, 0x0d, 0x5f, 0x74, 0x68, 0x72, 0x65,
  0x61, 0x64, 0x5f, 0x73, 0x6c, 0x65, 0x65, 0x70, 0x02, 0x05, 0x5f, 0x6d,
  0x61, 0x69, 0x6e, 0x03, 0x12, 0x5f, 0x5f, 0x70, 0x6f, 0x73, 0x74, 0x5f,
  0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x74, 0x69, 0x61, 0x74, 0x65, 0x00,
  0x1f, 0x10, 0x73, 0x6f, 0x75, 0x72, 0x63, 0x65, 0x4d, 0x61, 0x70, 0x70,
  0x69, 0x6e, 0x67, 0x55, 0x52, 0x4c, 0x0d, 0x74, 0x65, 0x73, 0x74, 0x2e,
  0x77, 0x61, 0x73, 0x6d, 0x2e, 0x6d, 0x61, 0x70
};
unsigned int test_wasm_len = 344;
