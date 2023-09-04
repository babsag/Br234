.class public Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;
.super Ljava/lang/Object;
.source "MyLzwCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;,
        Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:I

.field private c:I

.field private final d:Ljava/nio/ByteOrder;

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/nio/ByteOrder;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;-><init>(ILjava/nio/ByteOrder;ZLorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;)V

    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteOrder;ZLorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->c:I

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->i:Ljava/util/Map;

    .line 5
    iput-object p4, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->h:Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;

    .line 6
    iput-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->d:Ljava/nio/ByteOrder;

    .line 7
    iput-boolean p3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->e:Z

    .line 8
    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->b:I

    const/4 p2, 0x1

    shl-int p1, p2, p1

    .line 9
    iput p1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->f:I

    add-int/lit8 p2, p1, 0x1

    .line 10
    iput p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->g:I

    if-eqz p4, :cond_0

    .line 11
    invoke-interface {p4, p1, p2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;->init(II)V

    .line 12
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->h()V

    return-void
.end method

.method private a(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->a:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    .line 2
    iget-boolean v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->e:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 3
    :cond_0
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->c:I

    if-ne v3, v2, :cond_2

    const/16 v2, 0xc

    if-ge v0, v2, :cond_1

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->g()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->j(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;)V

    .line 6
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->e()V

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    .line 7
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->i:Ljava/util/Map;

    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->c:I

    add-int/2addr p2, v1

    iput p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->c:I

    :cond_3
    return p1
.end method

.method private b(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;[BII)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->d([BII)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;

    move-result-object p2

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->a(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;)Z

    move-result p1

    return p1
.end method

.method private c(B)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 1
    invoke-direct {p0, v1, v2, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->d([BII)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;

    move-result-object p1

    return-object p1
.end method

.method private d([BII)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;-><init>([BII)V

    return-object v0
.end method

.method private e()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->h()V

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->g()V

    return-void
.end method

.method private f([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->d([BII)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->i:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "CodeFromString"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->a:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->a:I

    :cond_0
    return-void
.end method

.method private h()V
    .locals 5

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->b:I

    iput v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->a:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    iput v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->c:I

    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->c:I

    if-ge v2, v0, :cond_1

    .line 4
    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->f:I

    if-eq v2, v3, :cond_0

    iget v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->g:I

    if-eq v2, v3, :cond_0

    int-to-byte v2, v2

    .line 5
    invoke-direct {p0, v2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->c(B)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->i:Ljava/util/Map;

    iget v4, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->c:I

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i([BII)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->d([BII)Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->i:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private j(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->h:Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->f:I

    invoke-interface {v0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;->dataCode(I)V

    .line 3
    :cond_0
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->f:I

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->k(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V

    return-void
.end method

.method private k(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->a:I

    invoke-virtual {p1, p2, v0}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->writeBits(II)V

    return-void
.end method

.method private l(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->h:Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;->dataCode(I)V

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->k(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V

    return-void
.end method

.method private m(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->h:Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->g:I

    invoke-interface {v0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor$Listener;->eoiCode(I)V

    .line 3
    :cond_0
    iget v0, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->g:I

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->k(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V

    return-void
.end method


# virtual methods
.method public compress([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2
    new-instance v1, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;

    iget-object v2, p0, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->d:Ljava/nio/ByteOrder;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->h()V

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->e()V

    .line 5
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->j(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 6
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 7
    invoke-direct {p0, p1, v3, v5}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->i([BII)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_1

    .line 8
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->f([BII)I

    move-result v4

    .line 9
    invoke-direct {p0, v1, v4}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->l(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V

    .line 10
    invoke-direct {p0, v1, p1, v3, v5}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->b(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;[BII)Z

    const/4 v3, 0x1

    move v3, v2

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->f([BII)I

    move-result p1

    .line 12
    invoke-direct {p0, v1, p1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->l(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;I)V

    .line 13
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/mylzw/MyLzwCompressor;->m(Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;)V

    .line 14
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/mylzw/MyBitOutputStream;->flushCache()V

    .line 15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
