.class Lnet/minidev/json/parser/a;
.super Lnet/minidev/json/parser/c;
.source "JSONParserByteArray.java"


# instance fields
.field private y:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/minidev/json/parser/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected f()V
    .locals 2

    .line 1
    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/JSONParserBase;->l:I

    iget v1, p0, Lnet/minidev/json/parser/c;->x:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    .line 2
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->f:C

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lnet/minidev/json/parser/a;->y:[B

    aget-byte v0, v1, v0

    int-to-char v0, v0

    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->f:C

    :goto_0
    return-void
.end method

.method protected k()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/JSONParserBase;->l:I

    iget v1, p0, Lnet/minidev/json/parser/c;->x:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lnet/minidev/json/parser/a;->y:[B

    aget-byte v0, v1, v0

    int-to-char v0, v0

    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->f:C

    return-void

    :cond_0
    const/16 v0, 0x1a

    .line 3
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->f:C

    .line 4
    new-instance v0, Lnet/minidev/json/parser/ParseException;

    iget v1, p0, Lnet/minidev/json/parser/JSONParserBase;->l:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    const-string v3, "EOF"

    invoke-direct {v0, v1, v2, v3}, Lnet/minidev/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method protected n()V
    .locals 2

    .line 1
    iget v0, p0, Lnet/minidev/json/parser/JSONParserBase;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/minidev/json/parser/JSONParserBase;->l:I

    iget v1, p0, Lnet/minidev/json/parser/c;->x:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    .line 2
    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->f:C

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lnet/minidev/json/parser/a;->y:[B

    aget-byte v0, v1, v0

    int-to-char v0, v0

    iput-char v0, p0, Lnet/minidev/json/parser/JSONParserBase;->f:C

    :goto_0
    return-void
.end method

.method protected u(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/minidev/json/parser/a;->y:[B

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->k:Ljava/lang/String;

    return-void
.end method

.method protected v(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/minidev/json/parser/a;->y:[B

    :goto_0
    const/16 v1, 0x20

    if-ge p1, p2, :cond_0

    .line 2
    aget-byte v2, v0, p1

    if-gt v2, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, -0x1

    .line 3
    aget-byte v2, v0, v2

    if-gt v2, v1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/minidev/json/parser/a;->y:[B

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->k:Ljava/lang/String;

    return-void
.end method

.method protected w(CI)I
    .locals 3

    move v0, p2

    .line 1
    :goto_0
    iget v1, p0, Lnet/minidev/json/parser/c;->x:I

    if-ge p2, v1, :cond_1

    .line 2
    iget-object v1, p0, Lnet/minidev/json/parser/a;->y:[B

    aget-byte v1, v1, v0

    int-to-byte v2, p1

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public x([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/minidev/json/JSONValue;->defaultReader:Lnet/minidev/json/writer/JsonReader;

    iget-object v0, v0, Lnet/minidev/json/writer/JsonReader;->DEFAULT:Lnet/minidev/json/writer/JsonReaderI;

    invoke-virtual {p0, p1, v0}, Lnet/minidev/json/parser/a;->y([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y([BLnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lnet/minidev/json/writer/JsonReaderI<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/minidev/json/parser/ParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lnet/minidev/json/writer/JsonReaderI;->base:Lnet/minidev/json/writer/JsonReader;

    iput-object v0, p0, Lnet/minidev/json/parser/JSONParserBase;->g:Lnet/minidev/json/writer/JsonReader;

    .line 2
    iput-object p1, p0, Lnet/minidev/json/parser/a;->y:[B

    .line 3
    array-length p1, p1

    iput p1, p0, Lnet/minidev/json/parser/c;->x:I

    .line 4
    invoke-virtual {p0, p2}, Lnet/minidev/json/parser/JSONParserBase;->d(Lnet/minidev/json/writer/JsonReaderI;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
