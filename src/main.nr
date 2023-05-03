use dep::std;

//answer: [3, 6, 9]
fn main(answer: [u8; 3]) {
    
    //this is hashed [3, 6, 9]
    let secret_array = [0x16, 0x10, 0xd3, 0x15, 0xca, 0xc8, 0xc2, 0x93, 0x0d, 0xc5, 0x29, 0x5e, 0x4f, 0xa3, 0x61, 0x62, 0xfe, 0x9a, 0x2a, 0x1b, 0x0c, 0xaa, 0x13, 0x01, 0x61, 0xd0, 0x19, 0xd8, 0xd9, 0xa4, 0xeb, 0x4f];

    std::println("Veryfying if the provided answer");
    std::println(answer);
    std::println("matches");
    std::println(secret_array);

    let hashed_answer = std::hash::sha256(answer);

    std::println("The hashed input equals");
    std::println(hashed_answer);

    constrain hashed_answer == secret_array;
}

#[test]
fn test_main() {
    main([3, 6, 9]);
    
    // Uncomment to make test fail
    // main(1, 1);
}
