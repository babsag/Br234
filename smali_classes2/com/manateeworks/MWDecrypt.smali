.class public Lcom/manateeworks/MWDecrypt;
.super Ljava/lang/Object;
.source "MWDecrypt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DecryptResult(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    .line 2
    invoke-static {p0}, Lcom/manateeworks/MWDecrypt;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {v0, p0}, Lcom/manateeworks/MWDecrypt;->decrypt([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    .line 4
    array-length v0, p0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 5
    aget-byte v2, p0, v0

    const/4 v3, 0x1

    aget-byte v4, p0, v3

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v2, v4

    const/4 v4, 0x4

    .line 6
    aget-byte v4, p0, v4

    if-lt v2, v3, :cond_5

    const/16 v3, 0x2710

    if-gt v2, v3, :cond_5

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 9
    new-array v4, v2, [B

    :goto_1
    if-lt v0, v2, :cond_2

    return-object v4

    .line 10
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    aget-byte v1, p0, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v3, 0x5

    .line 11
    aget-byte v4, p0, v4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    aget-byte v5, v5, v3

    if-eq v4, v5, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v1

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    return-object v1

    :catch_2
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    return-object v1

    :catch_3
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    return-object v1

    :catch_4
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v1

    :catch_5
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v1

    :catch_6
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    return-object v1

    nop

    :array_0
    .array-data 1
        0x19t
        0x1ct
        0x52t
        -0x52t
        -0x59t
        0x69t
        0x29t
        0x72t
        -0x3ft
        -0x17t
        0x7at
        0xdt
        0x27t
        0x57t
        0x23t
        -0x2ft
    .end array-data
.end method

.method public static decrypt([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p0, "AES/ECB/ZeroBytePadding"

    .line 2
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 4
    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method
