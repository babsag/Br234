.class public Lsun/misc/HexDumpEncoder;
.super Lsun/misc/CharacterEncoder;
.source "HexDumpEncoder.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsun/misc/CharacterEncoder;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lsun/misc/HexDumpEncoder;->d:[B

    return-void
.end method

.method static b(Ljava/io/PrintStream;B)V
    .locals 2

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-char v0, v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x41

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x30

    :goto_0
    int-to-char v0, v0

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    and-int/lit8 p1, p1, 0xf

    int-to-char p1, p1

    if-le p1, v1, :cond_1

    add-int/lit8 p1, p1, -0xa

    add-int/lit8 p1, p1, 0x41

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x30

    :goto_1
    int-to-char p1, p1

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->write(I)V

    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected bytesPerLine()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected encodeAtom(Ljava/io/OutputStream;[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lsun/misc/HexDumpEncoder;->d:[B

    iget p4, p0, Lsun/misc/HexDumpEncoder;->c:I

    aget-byte v0, p2, p3

    aput-byte v0, p1, p4

    .line 2
    iget-object p1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    aget-byte p2, p2, p3

    invoke-static {p1, p2}, Lsun/misc/HexDumpEncoder;->b(Ljava/io/PrintStream;B)V

    .line 3
    iget-object p1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 4
    iget p1, p0, Lsun/misc/HexDumpEncoder;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lsun/misc/HexDumpEncoder;->c:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    .line 5
    iget-object p1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lsun/misc/HexDumpEncoder;->a:I

    .line 2
    invoke-super {p0, p1}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    iget v0, p0, Lsun/misc/HexDumpEncoder;->a:I

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {p1, v0}, Lsun/misc/HexDumpEncoder;->b(Ljava/io/PrintStream;B)V

    .line 2
    iget-object p1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    iget v0, p0, Lsun/misc/HexDumpEncoder;->a:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-static {p1, v0}, Lsun/misc/HexDumpEncoder;->b(Ljava/io/PrintStream;B)V

    .line 3
    iget-object p1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lsun/misc/HexDumpEncoder;->c:I

    .line 5
    iput p2, p0, Lsun/misc/HexDumpEncoder;->b:I

    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p1, p0, Lsun/misc/HexDumpEncoder;->b:I

    const/16 v0, 0x10

    if-ge p1, v0, :cond_1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 2
    iget-object v1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    .line 3
    iget-object v1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5
    :goto_1
    iget v0, p0, Lsun/misc/HexDumpEncoder;->b:I

    if-ge p1, v0, :cond_4

    .line 6
    iget-object v0, p0, Lsun/misc/HexDumpEncoder;->d:[B

    aget-byte v1, v0, p1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_3

    aget-byte v1, v0, p1

    const/16 v2, 0x7a

    if-le v1, v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    iget-object v1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    aget-byte v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->write(I)V

    goto :goto_3

    .line 8
    :cond_3
    :goto_2
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 9
    :cond_4
    iget-object p1, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 10
    iget p1, p0, Lsun/misc/HexDumpEncoder;->a:I

    iget v0, p0, Lsun/misc/HexDumpEncoder;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lsun/misc/HexDumpEncoder;->a:I

    return-void
.end method
