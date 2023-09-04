.class public Lsun/security/util/DerValue;
.super Ljava/lang/Object;
.source "DerValue.java"


# static fields
.field public static final TAG_APPLICATION:B = 0x40t

.field public static final TAG_CONTEXT:B = -0x80t

.field public static final TAG_PRIVATE:B = -0x40t

.field public static final TAG_UNIVERSAL:B = 0x0t

.field public static final tag_BMPString:B = 0x1et

.field public static final tag_BitString:B = 0x3t

.field public static final tag_Boolean:B = 0x1t

.field public static final tag_Enumerated:B = 0xat

.field public static final tag_GeneralString:B = 0x1bt

.field public static final tag_GeneralizedTime:B = 0x18t

.field public static final tag_IA5String:B = 0x16t

.field public static final tag_Integer:B = 0x2t

.field public static final tag_Null:B = 0x5t

.field public static final tag_ObjectId:B = 0x6t

.field public static final tag_OctetString:B = 0x4t

.field public static final tag_PrintableString:B = 0x13t

.field public static final tag_Sequence:B = 0x30t

.field public static final tag_SequenceOf:B = 0x30t

.field public static final tag_Set:B = 0x31t

.field public static final tag_SetOf:B = 0x31t

.field public static final tag_T61String:B = 0x14t

.field public static final tag_UTF8String:B = 0xct

.field public static final tag_UniversalString:B = 0x1ct

.field public static final tag_UtcTime:B = 0x17t


# instance fields
.field private a:I

.field protected buffer:Lsun/security/util/b;

.field public final data:Lsun/security/util/DerInputStream;

.field public tag:B


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0, p1, p2}, Lsun/security/util/DerValue;->c(BLjava/lang/String;)Lsun/security/util/DerInputStream;

    move-result-object p1

    iput-object p1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    .line 9
    new-instance p1, Lsun/security/util/b;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p1, v0}, Lsun/security/util/b;-><init>([B)V

    iput-object p1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    .line 10
    array-length p2, p2

    iput p2, p0, Lsun/security/util/DerValue;->a:I

    .line 11
    new-instance p2, Lsun/security/util/DerInputStream;

    invoke-direct {p2, p1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/b;)V

    iput-object p2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    const p1, 0x7fffffff

    .line 12
    invoke-virtual {p2, p1}, Lsun/security/util/DerInputStream;->mark(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0, p1}, Lsun/security/util/DerValue;->d(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object p1

    iput-object p1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x13

    goto :goto_2

    :cond_2
    const/16 v0, 0xc

    .line 4
    :goto_2
    invoke-direct {p0, v0, p1}, Lsun/security/util/DerValue;->c(BLjava/lang/String;)Lsun/security/util/DerInputStream;

    move-result-object p1

    iput-object p1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    return-void
.end method

.method constructor <init>(Lsun/security/util/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    .line 15
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v1, v0, 0xff

    .line 16
    invoke-static {v1, p1}, Lsun/security/util/DerInputStream;->c(ILjava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lsun/security/util/DerValue;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 17
    invoke-virtual {p1}, Lsun/security/util/b;->a()Lsun/security/util/b;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    const/4 v3, 0x2

    add-int/lit8 v4, v2, 0x2

    .line 19
    new-array v4, v4, [B

    const/4 v5, 0x0

    .line 20
    iget-byte v6, p0, Lsun/security/util/DerValue;->tag:B

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    .line 21
    aput-byte v0, v4, v5

    .line 22
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    invoke-virtual {v0, v4, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 24
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 25
    new-instance v0, Lsun/security/util/a;

    invoke-direct {v0}, Lsun/security/util/a;-><init>()V

    .line 26
    new-instance v1, Lsun/security/util/b;

    invoke-virtual {v0, v4}, Lsun/security/util/a;->a([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lsun/security/util/b;-><init>([B)V

    .line 27
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 28
    invoke-static {v1}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lsun/security/util/DerValue;->a:I

    .line 29
    invoke-virtual {v1}, Lsun/security/util/b;->a()Lsun/security/util/b;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    .line 30
    iget v1, p0, Lsun/security/util/DerValue;->a:I

    invoke-virtual {v0, v1}, Lsun/security/util/b;->m(I)V

    .line 31
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/b;)V

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 32
    iget v0, p0, Lsun/security/util/DerValue;->a:I

    add-int/2addr v0, v3

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ByteArrayInputStream;->skip(J)J

    goto :goto_0

    .line 33
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Indefinite length encoding not supported"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_1
    invoke-virtual {p1}, Lsun/security/util/b;->a()Lsun/security/util/b;

    move-result-object v0

    iput-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    .line 35
    iget v1, p0, Lsun/security/util/DerValue;->a:I

    invoke-virtual {v0, v1}, Lsun/security/util/b;->m(I)V

    .line 36
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/b;)V

    iput-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 37
    iget v0, p0, Lsun/security/util/DerValue;->a:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ByteArrayInputStream;->skip(J)J

    :goto_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerValue;->d(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object p1

    iput-object p1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerValue;->d(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;

    move-result-object p1

    iput-object p1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    return-void
.end method

.method private a([B[B)[B
    .locals 3

    if-nez p1, :cond_0

    return-object p2

    .line 1
    :cond_0
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static b(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->reset()V

    .line 4
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->reset()V

    .line 5
    iget-object p0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    iget-object p1, p1, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-virtual {p0, p1}, Lsun/security/util/b;->b(Lsun/security/util/b;)Z

    move-result p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private c(BLjava/lang/String;)Lsun/security/util/DerInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0x16

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    const-string p1, "ISO-8859-1"

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported DER string type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "UnicodeBigUnmarked"

    goto :goto_0

    :cond_2
    const-string p1, "ASCII"

    goto :goto_0

    :cond_3
    const-string p1, "UTF8"

    .line 3
    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 4
    array-length p2, p1

    iput p2, p0, Lsun/security/util/DerValue;->a:I

    .line 5
    new-instance p2, Lsun/security/util/b;

    invoke-direct {p2, p1}, Lsun/security/util/b;-><init>([B)V

    iput-object p2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    .line 6
    new-instance p1, Lsun/security/util/DerInputStream;

    invoke-direct {p1, p2}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/b;)V

    const p2, 0x7fffffff

    .line 7
    invoke-virtual {p1, p2}, Lsun/security/util/DerInputStream;->mark(I)V

    return-object p1
.end method

.method public static createTag(BZB)B
    .locals 0

    or-int/2addr p0, p2

    int-to-byte p0, p0

    if-eqz p1, :cond_0

    or-int/lit8 p0, p0, 0x20

    int-to-byte p0, p0

    :cond_0
    return p0
.end method

.method private d(ZLjava/io/InputStream;)Lsun/security/util/DerInputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    .line 2
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v1, v0, 0xff

    .line 3
    invoke-static {v1, p2}, Lsun/security/util/DerInputStream;->c(ILjava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lsun/security/util/DerValue;->a:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v1

    const/4 v2, 0x2

    add-int/lit8 v3, v1, 0x2

    .line 5
    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 6
    iget-byte v5, p0, Lsun/security/util/DerValue;->tag:B

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    .line 7
    aput-byte v0, v3, v4

    .line 8
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    invoke-virtual {v0, v3, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 10
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 11
    new-instance p2, Lsun/security/util/a;

    invoke-direct {p2}, Lsun/security/util/a;-><init>()V

    .line 12
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2, v3}, Lsun/security/util/a;->a([B)[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 13
    iget-byte p2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 14
    invoke-static {v0}, Lsun/security/util/DerInputStream;->d(Ljava/io/InputStream;)I

    move-result p2

    iput p2, p0, Lsun/security/util/DerValue;->a:I

    move-object p2, v0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Indefinite length encoding not supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    :goto_0
    iget v0, p0, Lsun/security/util/DerValue;->a:I

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p1

    iget v0, p0, Lsun/security/util/DerValue;->a:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "extra data given to DerValue constructor"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    :goto_1
    iget p1, p0, Lsun/security/util/DerValue;->a:I

    new-array p1, p1, [B

    .line 20
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 22
    new-instance p2, Lsun/security/util/b;

    invoke-direct {p2, p1}, Lsun/security/util/b;-><init>([B)V

    iput-object p2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    .line 23
    new-instance p1, Lsun/security/util/DerInputStream;

    invoke-direct {p1, p2}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/b;)V

    return-object p1
.end method

.method public static isPrintableStringChar(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x61

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7a

    if-le p0, v1, :cond_2

    :cond_0
    const/16 v1, 0x41

    if-lt p0, v1, :cond_1

    const/16 v1, 0x5a

    if-le p0, v1, :cond_2

    :cond_1
    const/16 v1, 0x30

    if-lt p0, v1, :cond_3

    const/16 v1, 0x39

    if-gt p0, v1, :cond_3

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x20

    if-eq p0, v1, :cond_4

    const/16 v1, 0x3a

    if-eq p0, v1, :cond_4

    const/16 v1, 0x3d

    if-eq p0, v1, :cond_4

    const/16 v1, 0x3f

    if-eq p0, v1, :cond_4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_4
    :pswitch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2
    iget v0, p0, Lsun/security/util/DerValue;->a:I

    invoke-virtual {p1, v0}, Lsun/security/util/DerOutputStream;->putLength(I)V

    .line 3
    iget v0, p0, Lsun/security/util/DerValue;->a:I

    if-lez v0, :cond_1

    .line 4
    new-array v0, v0, [B

    .line 5
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 7
    iget-object v2, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    iget v3, p0, Lsun/security/util/DerValue;->a:I

    if-ne v2, v3, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 9
    monitor-exit v1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "short DER value read (encode)"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lsun/security/util/DerValue;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lsun/security/util/DerValue;

    invoke-virtual {p0, p1}, Lsun/security/util/DerValue;->equals(Lsun/security/util/DerValue;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Lsun/security/util/DerValue;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    if-eq v1, v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-ne v1, v2, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 6
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 7
    invoke-static {p0, p1}, Lsun/security/util/DerValue;->b(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z

    move-result p1

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {p1, p0}, Lsun/security/util/DerValue;->b(Lsun/security/util/DerValue;Lsun/security/util/DerValue;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getUTF8String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getPrintableString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getT61String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getIA5String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_4

    .line 6
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getBMPString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v1, 0x1b

    if-ne v0, v1, :cond_5

    .line 7
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getGeneralString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBMPString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "UnicodeBigUnmarked"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBMPString, not BMP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsun/security/util/b;->c(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBigInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBitString()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-virtual {v0}, Lsun/security/util/b;->d()[B

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBitString(Z)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 4
    iget-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DerValue.getBitString, not a bit string "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-virtual {p1}, Lsun/security/util/b;->d()[B

    move-result-object p1

    return-object p1
.end method

.method public getBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget v0, p0, Lsun/security/util/DerValue;->a:I

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBoolean, invalid length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/security/util/DerValue;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBoolean, not a BOOLEAN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getData()Lsun/security/util/DerInputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    return-object v0
.end method

.method public getDataBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lsun/security/util/DerValue;->a:I

    new-array v0, v0, [B

    .line 2
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->reset()V

    .line 4
    iget-object v2, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2, v0}, Lsun/security/util/DerInputStream;->getBytes([B)V

    .line 5
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEnumerated()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/b;->g(I)I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getEnumerated, incorrect tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGeneralString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getGeneralString, not GeneralString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGeneralizedTime()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/b;->f(I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getGeneralizedTime, not a GeneralizedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIA5String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getIA5String, not IA5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInteger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/b;->g(I)I

    move-result v0

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOID()Lsun/security/util/ObjectIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lsun/security/util/ObjectIdentifier;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-direct {v0, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Lsun/security/util/b;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getOID, not an OID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOctetString()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lsun/security/util/DerValue;->isConstructed(B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getOctetString, not an Octet String: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget v0, p0, Lsun/security/util/DerValue;->a:I

    new-array v0, v0, [B

    .line 4
    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v1

    iget v2, p0, Lsun/security/util/DerValue;->a:I

    if-ne v1, v2, :cond_3

    .line 5
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    const/4 v0, 0x0

    .line 7
    :goto_1
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lsun/security/util/DerValue;->a([B[B)[B

    move-result-object v0

    goto :goto_1

    :cond_2
    return-object v0

    .line 9
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "short read on DerValue buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPositiveBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsun/security/util/b;->c(IZ)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBigInteger, not an int "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrintableString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getPrintableString, not a string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getT61String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getT61String, not T61 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getTag()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    return v0
.end method

.method public getUTCTime()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/security/util/b;->i(I)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getUTCTime, not a UtcTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUTF8String()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getUTF8String, not UTF-8 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnalignedBitString()Lsun/security/util/BitArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-virtual {v0}, Lsun/security/util/b;->j()Lsun/security/util/BitArray;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DerValue.getBitString, not a bit string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnalignedBitString(Z)Lsun/security/util/BitArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 4
    iget-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DerValue.getBitString, not a bit string "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-virtual {p1}, Lsun/security/util/b;->j()Lsun/security/util/BitArray;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsun/security/util/DerValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isApplication()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConstructed()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConstructed(B)Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v0, v0, 0x1f

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isContextSpecific()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContextSpecific(B)Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v0, v0, 0x1f

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isUniversal()Z
    .locals 1

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    and-int/lit16 v0, v0, 0xc0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    .line 1
    iget v0, p0, Lsun/security/util/DerValue;->a:I

    return v0
.end method

.method public resetTag(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lsun/security/util/DerValue;->tag:B

    return-void
.end method

.method public toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 3
    iget-object v1, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->reset()V

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toDerInputStream()Lsun/security/util/DerInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toDerInputStream rejects tag type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/util/DerValue;->buffer:Lsun/security/util/b;

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>(Lsun/security/util/b;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "\""

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string v0, "[DerValue, null]"

    return-object v0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OID."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DerValue, tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun/security/util/DerValue;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "misformatted DER value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
