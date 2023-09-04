.class Lsun/security/util/a;
.super Ljava/lang/Object;
.source "DerIndefLenConverter.java"


# instance fields
.field private a:[B

.field private b:[B

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/security/util/a;->g:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lsun/security/util/a;->h:I

    return-void
.end method

.method private b(I)[B
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-ge p1, v2, :cond_0

    new-array v0, v0, [B

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_1

    :cond_0
    const/16 v2, 0x100

    const/4 v3, 0x2

    if-ge p1, v2, :cond_1

    new-array v2, v3, [B

    const/16 v3, -0x7f

    aput-byte v3, v2, v1

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    const/high16 v2, 0x10000

    const/4 v4, 0x3

    if-ge p1, v2, :cond_2

    new-array v2, v4, [B

    const/16 v4, -0x7e

    aput-byte v4, v2, v1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    int-to-byte p1, p1

    aput-byte p1, v2, v3

    goto :goto_0

    :cond_2
    const/high16 v2, 0x1000000

    const/4 v5, 0x4

    if-ge p1, v2, :cond_3

    new-array v2, v5, [B

    const/16 v5, -0x7d

    aput-byte v5, v2, v1

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    new-array v2, v2, [B

    const/16 v6, -0x7c

    aput-byte v6, v2, v1

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    int-to-byte p1, p1

    aput-byte p1, v2, v5

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method private c(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x1f

    if-nez v0, :cond_0

    and-int/lit8 v0, p1, 0x20

    if-nez v0, :cond_0

    and-int/lit16 p1, p1, 0xc0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static d(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lsun/security/util/a;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 p0, p0, 0x7f

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static e(I)Z
    .locals 1

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private f()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lsun/security/util/a;->d:I

    iget v1, p0, Lsun/security/util/a;->e:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v1, p0, Lsun/security/util/a;->a:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lsun/security/util/a;->d:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-static {v0}, Lsun/security/util/a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lsun/security/util/a;->g:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    iget v3, p0, Lsun/security/util/a;->d:I

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2

    .line 5
    :cond_1
    invoke-static {v0}, Lsun/security/util/a;->e(I)Z

    move-result v1

    if-eqz v1, :cond_4

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    .line 6
    iget v1, p0, Lsun/security/util/a;->e:I

    iget v3, p0, Lsun/security/util/a;->d:I

    sub-int/2addr v1, v3

    add-int/lit8 v3, v0, 0x1

    if-lt v1, v3, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    shl-int/lit8 v1, v1, 0x8

    .line 7
    iget-object v3, p0, Lsun/security/util/a;->a:[B

    iget v4, p0, Lsun/security/util/a;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun/security/util/a;->d:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too little data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too much data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    and-int/lit8 v1, v0, 0x7f

    :cond_5
    return v1
.end method

.method private g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lsun/security/util/a;->d:I

    iget v1, p0, Lsun/security/util/a;->e:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lsun/security/util/a;->a:[B

    aget-byte v0, v1, v0

    invoke-direct {p0, v0}, Lsun/security/util/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lsun/security/util/a;->a:[B

    iget v1, p0, Lsun/security/util/a;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lsun/security/util/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 4
    iget-object v1, p0, Lsun/security/util/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    move-object v3, v1

    check-cast v3, [B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v2, :cond_3

    .line 7
    iget v3, p0, Lsun/security/util/a;->d:I

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v3, v1

    add-int/2addr v3, v0

    .line 8
    invoke-direct {p0, v3}, Lsun/security/util/a;->b(I)[B

    move-result-object v0

    .line 9
    iget-object v1, p0, Lsun/security/util/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget v1, p0, Lsun/security/util/a;->h:I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x3

    add-int/2addr v1, v0

    iput v1, p0, Lsun/security/util/a;->h:I

    goto :goto_2

    .line 11
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOC does not have matching indefinite-length tag"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_4
    :goto_2
    iget v0, p0, Lsun/security/util/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/security/util/a;->d:I

    return-void
.end method

.method private h(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsun/security/util/a;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/security/util/a;->d:I

    return-void
.end method

.method private i(I)V
    .locals 4

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lsun/security/util/a;->b:[B

    iget v1, p0, Lsun/security/util/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/a;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lsun/security/util/a;->b:[B

    iget v1, p0, Lsun/security/util/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/a;->c:I

    const/16 v3, -0x7f

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 3
    iput v1, p0, Lsun/security/util/a;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    goto/16 :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    .line 4
    iget-object v0, p0, Lsun/security/util/a;->b:[B

    iget v1, p0, Lsun/security/util/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/a;->c:I

    const/16 v3, -0x7e

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 5
    iput v1, p0, Lsun/security/util/a;->c:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 6
    iput v2, p0, Lsun/security/util/a;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_2
    const/high16 v0, 0x1000000

    if-ge p1, v0, :cond_3

    .line 7
    iget-object v0, p0, Lsun/security/util/a;->b:[B

    iget v1, p0, Lsun/security/util/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/a;->c:I

    const/16 v3, -0x7d

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 8
    iput v1, p0, Lsun/security/util/a;->c:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 9
    iput v2, p0, Lsun/security/util/a;->c:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 10
    iput v1, p0, Lsun/security/util/a;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lsun/security/util/a;->b:[B

    iget v1, p0, Lsun/security/util/a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/security/util/a;->c:I

    const/16 v3, -0x7c

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 12
    iput v1, p0, Lsun/security/util/a;->c:I

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 13
    iput v2, p0, Lsun/security/util/a;->c:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 14
    iput v1, p0, Lsun/security/util/a;->c:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 15
    iput v2, p0, Lsun/security/util/a;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    :goto_0
    return-void
.end method

.method private j()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lsun/security/util/a;->d:I

    iget v1, p0, Lsun/security/util/a;->e:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lsun/security/util/a;->a:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lsun/security/util/a;->d:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-static {v0}, Lsun/security/util/a;->d(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lsun/security/util/a;->g:Ljava/util/ArrayList;

    iget v1, p0, Lsun/security/util/a;->f:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lsun/security/util/a;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 5
    iget-object v1, p0, Lsun/security/util/a;->b:[B

    iget v3, p0, Lsun/security/util/a;->c:I

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v1, p0, Lsun/security/util/a;->c:I

    array-length v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lsun/security/util/a;->c:I

    return-void

    .line 7
    :cond_1
    invoke-static {v0}, Lsun/security/util/a;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    shl-int/lit8 v1, v1, 0x8

    .line 8
    iget-object v3, p0, Lsun/security/util/a;->a:[B

    iget v4, p0, Lsun/security/util/a;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun/security/util/a;->d:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x7f

    .line 9
    :cond_3
    invoke-direct {p0, v1}, Lsun/security/util/a;->i(I)V

    .line 10
    invoke-direct {p0, v1}, Lsun/security/util/a;->l(I)V

    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    iget v0, p0, Lsun/security/util/a;->d:I

    iget v1, p0, Lsun/security/util/a;->e:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lsun/security/util/a;->a:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lsun/security/util/a;->d:I

    aget-byte v0, v1, v0

    .line 3
    invoke-direct {p0, v0}, Lsun/security/util/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/util/a;->a:[B

    iget v2, p0, Lsun/security/util/a;->d:I

    aget-byte v1, v1, v2

    if-nez v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 4
    iput v2, p0, Lsun/security/util/a;->d:I

    .line 5
    invoke-direct {p0}, Lsun/security/util/a;->k()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lsun/security/util/a;->b:[B

    iget v2, p0, Lsun/security/util/a;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/a;->c:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    :goto_0
    return-void
.end method

.method private l(I)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1
    iget-object v1, p0, Lsun/security/util/a;->b:[B

    iget v2, p0, Lsun/security/util/a;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/security/util/a;->c:I

    iget-object v3, p0, Lsun/security/util/a;->a:[B

    iget v4, p0, Lsun/security/util/a;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun/security/util/a;->d:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method a([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lsun/security/util/a;->a:[B

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsun/security/util/a;->d:I

    iput v0, p0, Lsun/security/util/a;->f:I

    .line 3
    array-length p1, p1

    iput p1, p0, Lsun/security/util/a;->e:I

    .line 4
    :goto_0
    iget p1, p0, Lsun/security/util/a;->d:I

    iget v1, p0, Lsun/security/util/a;->e:I

    if-ge p1, v1, :cond_0

    .line 5
    invoke-direct {p0}, Lsun/security/util/a;->g()V

    .line 6
    invoke-direct {p0}, Lsun/security/util/a;->f()I

    move-result p1

    .line 7
    invoke-direct {p0, p1}, Lsun/security/util/a;->h(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget p1, p0, Lsun/security/util/a;->h:I

    add-int/2addr v1, p1

    new-array p1, v1, [B

    iput-object p1, p0, Lsun/security/util/a;->b:[B

    .line 9
    iput v0, p0, Lsun/security/util/a;->d:I

    iput v0, p0, Lsun/security/util/a;->c:I

    iput v0, p0, Lsun/security/util/a;->f:I

    .line 10
    :goto_1
    iget p1, p0, Lsun/security/util/a;->d:I

    iget v0, p0, Lsun/security/util/a;->e:I

    if-ge p1, v0, :cond_1

    .line 11
    invoke-direct {p0}, Lsun/security/util/a;->k()V

    .line 12
    invoke-direct {p0}, Lsun/security/util/a;->j()V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p0, Lsun/security/util/a;->b:[B

    return-object p1
.end method
