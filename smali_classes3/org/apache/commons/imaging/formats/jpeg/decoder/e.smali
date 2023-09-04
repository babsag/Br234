.class final Lorg/apache/commons/imaging/formats/jpeg/decoder/e;
.super Ljava/lang/Object;
.source "ZigZag.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/decoder/e;->a:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x5
        0x6
        0xe
        0xf
        0x1b
        0x1c
        0x2
        0x4
        0x7
        0xd
        0x10
        0x1a
        0x1d
        0x2a
        0x3
        0x8
        0xc
        0x11
        0x19
        0x1e
        0x29
        0x2b
        0x9
        0xb
        0x12
        0x18
        0x1f
        0x28
        0x2c
        0x35
        0xa
        0x13
        0x17
        0x20
        0x27
        0x2d
        0x34
        0x36
        0x14
        0x16
        0x21
        0x26
        0x2e
        0x33
        0x37
        0x3c
        0x15
        0x22
        0x25
        0x2f
        0x32
        0x38
        0x3b
        0x3d
        0x23
        0x24
        0x30
        0x31
        0x39
        0x3a
        0x3e
        0x3f
    .end array-data
.end method

.method public static a([I[I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    sget-object v1, Lorg/apache/commons/imaging/formats/jpeg/decoder/e;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget v1, v1, v0

    aget v1, p0, v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
