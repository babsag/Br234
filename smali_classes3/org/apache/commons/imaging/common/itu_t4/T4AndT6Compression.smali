.class public final Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;
.super Ljava/lang/Object;
.source "T4AndT6Compression.java"


# static fields
.field public static final BLACK:I = 0x1

.field public static final WHITE:I

.field private static final a:Lorg/apache/commons/imaging/common/itu_t4/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/imaging/common/itu_t4/c<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/apache/commons/imaging/common/itu_t4/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/imaging/common/itu_t4/c<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lorg/apache/commons/imaging/common/itu_t4/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/imaging/common/itu_t4/c<",
            "Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/c;

    invoke-direct {v0}, Lorg/apache/commons/imaging/common/itu_t4/c;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->a:Lorg/apache/commons/imaging/common/itu_t4/c;

    .line 2
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/c;

    invoke-direct {v0}, Lorg/apache/commons/imaging/common/itu_t4/c;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->b:Lorg/apache/commons/imaging/common/itu_t4/c;

    .line 3
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/c;

    invoke-direct {v0}, Lorg/apache/commons/imaging/common/itu_t4/c;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->c:Lorg/apache/commons/imaging/common/itu_t4/c;

    .line 4
    :try_start_0
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->a:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 5
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->a:Lorg/apache/commons/imaging/common/itu_t4/c;

    iget-object v6, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->b:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->c:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 7
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->a:Lorg/apache/commons/imaging/common/itu_t4/c;

    iget-object v6, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->b:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8
    :cond_1
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->b:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 9
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->b:Lorg/apache/commons/imaging/common/itu_t4/c;

    iget-object v6, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->b:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 10
    :cond_2
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->d:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 11
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->b:Lorg/apache/commons/imaging/common/itu_t4/c;

    iget-object v6, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->b:Ljava/lang/Integer;

    invoke-virtual {v5, v6, v4}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 12
    :cond_3
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->e:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 13
    sget-object v4, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->a:Lorg/apache/commons/imaging/common/itu_t4/c;

    iget-object v5, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    iget-object v6, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->b:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    sget-object v4, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->b:Lorg/apache/commons/imaging/common/itu_t4/c;

    iget-object v5, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->b:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v3}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 15
    :cond_4
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->c:Lorg/apache/commons/imaging/common/itu_t4/c;

    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->f:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->g:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->h:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->i:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->j:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->k:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->l:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->m:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->n:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->o:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->p:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->t:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->u:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->v:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->q:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->r:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->s:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->c(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([II)I
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget p0, p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lorg/apache/commons/imaging/common/itu_t4/b;Lorg/apache/commons/imaging/common/itu_t4/a;[II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    const/4 v3, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/apache/commons/imaging/common/itu_t4/b;->b(I)I

    move-result v4

    if-eqz p2, :cond_0

    .line 2
    aput v4, p2, v0

    :cond_0
    if-ne v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p1, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->i(Lorg/apache/commons/imaging/common/itu_t4/a;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p2, "Error reading image to compress"

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 5
    :cond_2
    invoke-static {p1, v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->i(Lorg/apache/commons/imaging/common/itu_t4/a;II)V

    return-void
.end method

.method private static c(IIILorg/apache/commons/imaging/common/itu_t4/a;I[I)I
    .locals 2

    sub-int p2, p1, p2

    const/4 v0, -0x3

    if-gt v0, p2, :cond_6

    const/4 v1, 0x3

    if-gt p2, v1, :cond_6

    if-eq p2, v0, :cond_5

    const/4 p0, -0x2

    if-eq p2, p0, :cond_4

    const/4 p0, -0x1

    if-eq p2, p0, :cond_3

    if-eqz p2, :cond_2

    const/4 p0, 0x1

    if-eq p2, p0, :cond_1

    const/4 p0, 0x2

    if-eq p2, p0, :cond_0

    .line 1
    sget-object p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->s:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->r:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->q:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_0

    .line 4
    :cond_2
    sget-object p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->p:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_0

    .line 5
    :cond_3
    sget-object p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->t:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_0

    .line 6
    :cond_4
    sget-object p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->u:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_0

    .line 7
    :cond_5
    sget-object p0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->v:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 8
    :goto_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    return p1

    :cond_6
    rsub-int/lit8 p2, p4, 0x1

    add-int/lit8 v0, p1, 0x1

    .line 9
    invoke-static {p5, p2, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result p5

    sub-int p0, p1, p0

    sub-int p1, p5, p1

    .line 10
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->o:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, p3}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    .line 11
    invoke-static {p3, p0, p4}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->i(Lorg/apache/commons/imaging/common/itu_t4/a;II)V

    .line 12
    invoke-static {p3, p1, p2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->i(Lorg/apache/commons/imaging/common/itu_t4/a;II)V

    return p5
.end method

.method public static compressModifiedHuffman([BII)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/b;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/b;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/a;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-static {v0, p0, v2, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->b(Lorg/apache/commons/imaging/common/itu_t4/b;Lorg/apache/commons/imaging/common/itu_t4/a;[II)V

    .line 4
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/itu_t4/b;->a()V

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->flush()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->b()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public static compressT4_1D([BIIZ)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/b;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/b;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/a;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;-><init>()V

    if-eqz p3, :cond_0

    .line 3
    :try_start_0
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->j:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->f:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_3

    const/4 v3, 0x0

    .line 5
    invoke-static {v0, p0, v3, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->b(Lorg/apache/commons/imaging/common/itu_t4/b;Lorg/apache/commons/imaging/common/itu_t4/a;[II)V

    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->a()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->flush()V

    const/16 v3, 0x8

    :cond_1
    :goto_2
    if-le v3, v4, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lorg/apache/commons/imaging/common/itu_t4/a;->c(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 9
    :cond_2
    sget-object v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->f:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v3, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    .line 10
    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/itu_t4/b;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->b()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
.end method

.method public static compressT4_2D([BIIZI)[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    move/from16 v0, p1

    .line 1
    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/b;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/b;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance v2, Lorg/apache/commons/imaging/common/itu_t4/a;

    invoke-direct {v2}, Lorg/apache/commons/imaging/common/itu_t4/a;-><init>()V

    .line 3
    new-array v3, v0, [I

    .line 4
    new-array v4, v0, [I

    if-eqz p3, :cond_0

    .line 5
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->j:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->f:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v5, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    :goto_0
    const/4 v9, 0x0

    move/from16 v12, p2

    move-object v10, v3

    move-object v11, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v13, v12, :cond_a

    const/4 v15, 0x1

    if-lez v14, :cond_6

    .line 7
    invoke-virtual {v2, v9}, Lorg/apache/commons/imaging/common/itu_t4/a;->c(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {v1, v15}, Lorg/apache/commons/imaging/common/itu_t4/b;->b(I)I

    move-result v4

    aput v4, v11, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "Error reading image to compress"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 10
    :cond_1
    invoke-static {v11, v9, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v3

    .line 11
    invoke-static {v10, v9, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    .line 12
    invoke-static {v10, v15, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    move v8, v3

    move v6, v4

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v3, v0, :cond_5

    if-ge v5, v8, :cond_2

    .line 13
    sget-object v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->n:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    move v3, v5

    goto :goto_4

    :cond_2
    move v4, v8

    move v5, v6

    move-object v6, v2

    move/from16 v7, v16

    move v9, v8

    move-object v8, v11

    .line 14
    invoke-static/range {v3 .. v8}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->c(IIILorg/apache/commons/imaging/common/itu_t4/a;I[I)I

    move-result v3

    if-ne v3, v9, :cond_3

    rsub-int/lit8 v16, v16, 0x1

    :cond_3
    :goto_4
    move/from16 v4, v16

    .line 15
    invoke-static {v10, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->a([II)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 16
    invoke-static {v11, v4, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v8

    if-ne v4, v5, :cond_4

    .line 17
    invoke-static {v10, v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    goto :goto_5

    .line 18
    :cond_4
    invoke-static {v10, v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v6

    rsub-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v15

    .line 19
    invoke-static {v10, v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    :goto_5
    move v6, v5

    rsub-int/lit8 v5, v4, 0x1

    add-int/lit8 v7, v6, 0x1

    .line 20
    invoke-static {v10, v5, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    move/from16 v16, v4

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    move-object/from16 v17, v11

    move-object v11, v10

    move-object/from16 v10, v17

    goto :goto_6

    .line 21
    :cond_6
    invoke-virtual {v2, v15}, Lorg/apache/commons/imaging/common/itu_t4/a;->c(I)V

    .line 22
    invoke-static {v1, v2, v10, v0}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->b(Lorg/apache/commons/imaging/common/itu_t4/b;Lorg/apache/commons/imaging/common/itu_t4/a;[II)V

    :goto_6
    if-eqz p3, :cond_8

    .line 23
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/a;->a()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_7

    .line 24
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/a;->flush()V

    const/16 v3, 0x8

    :cond_7
    :goto_7
    if-le v3, v4, :cond_8

    const/4 v5, 0x0

    .line 25
    invoke-virtual {v2, v5}, Lorg/apache/commons/imaging/common/itu_t4/a;->c(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    .line 26
    sget-object v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->f:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v3, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p4

    if-ne v14, v3, :cond_9

    const/4 v14, 0x0

    .line 27
    :cond_9
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/itu_t4/b;->a()V

    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 28
    :cond_a
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/a;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public static compressT6([BII)[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    move/from16 v0, p1

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    new-instance v2, Lorg/apache/commons/imaging/common/itu_t4/b;

    invoke-direct {v2, v1}, Lorg/apache/commons/imaging/common/itu_t4/b;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3
    :try_start_2
    new-instance v9, Lorg/apache/commons/imaging/common/itu_t4/a;

    invoke-direct {v9}, Lorg/apache/commons/imaging/common/itu_t4/a;-><init>()V

    .line 4
    new-array v3, v0, [I

    .line 5
    new-array v4, v0, [I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    move/from16 v13, p2

    move-object v11, v3

    move-object v12, v4

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_5

    const/4 v3, 0x0

    :goto_1
    const/4 v15, 0x1

    if-ge v3, v0, :cond_0

    .line 6
    :try_start_3
    invoke-virtual {v2, v15}, Lorg/apache/commons/imaging/common/itu_t4/b;->b(I)I

    move-result v4

    aput v4, v12, v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    :try_start_4
    new-instance v3, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v4, "Error reading image to compress"

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 8
    :cond_0
    invoke-static {v12, v10, v10}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v3

    .line 9
    invoke-static {v11, v10, v10}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    .line 10
    invoke-static {v11, v15, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    move v8, v3

    move v6, v4

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    if-ge v5, v8, :cond_1

    .line 11
    sget-object v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->n:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v3, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    move v3, v5

    goto :goto_3

    :cond_1
    move v4, v8

    move v5, v6

    move-object v6, v9

    move/from16 v7, v16

    move v10, v8

    move-object v8, v12

    .line 12
    invoke-static/range {v3 .. v8}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->c(IIILorg/apache/commons/imaging/common/itu_t4/a;I[I)I

    move-result v3

    if-ne v3, v10, :cond_2

    rsub-int/lit8 v16, v16, 0x1

    :cond_2
    :goto_3
    move/from16 v4, v16

    .line 13
    invoke-static {v11, v3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->a([II)I

    move-result v5

    add-int/lit8 v6, v3, 0x1

    .line 14
    invoke-static {v12, v4, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v8

    if-ne v4, v5, :cond_3

    .line 15
    invoke-static {v11, v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    :goto_4
    move v6, v5

    goto :goto_5

    .line 16
    :cond_3
    invoke-static {v11, v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v6

    rsub-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v15

    .line 17
    invoke-static {v11, v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    goto :goto_4

    :goto_5
    rsub-int/lit8 v5, v4, 0x1

    add-int/lit8 v7, v6, 0x1

    .line 18
    invoke-static {v11, v5, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    move/from16 v16, v4

    const/4 v10, 0x0

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/itu_t4/b;->a()V

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    move-object/from16 v17, v12

    move-object v12, v11

    move-object/from16 v11, v17

    goto :goto_0

    .line 20
    :cond_5
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->f:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    .line 21
    invoke-virtual {v0, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    .line 22
    invoke-virtual {v9}, Lorg/apache/commons/imaging/common/itu_t4/a;->b()[B

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 23
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 24
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_a
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    .line 25
    new-instance v1, Lorg/apache/commons/imaging/ImageWriteException;

    const-string v2, "I/O error"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static d(Lorg/apache/commons/imaging/common/itu_t4/a;[IIII)V
    .locals 0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 1
    aput p4, p1, p2

    .line 2
    invoke-virtual {p0, p4}, Lorg/apache/commons/imaging/common/itu_t4/a;->c(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static decompressModifiedHuffman([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/b;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/itu_t4/b;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 3
    :try_start_2
    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/a;

    invoke-direct {v1}, Lorg/apache/commons/imaging/common/itu_t4/a;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, p1, :cond_1

    .line 4
    :try_start_3
    invoke-static {p0, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->h(Lorg/apache/commons/imaging/common/itu_t4/b;I)I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_0

    .line 5
    invoke-virtual {v1, v5}, Lorg/apache/commons/imaging/common/itu_t4/a;->c(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    rsub-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v6

    goto :goto_1

    :cond_1
    if-ne v4, p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/b;->a()V

    .line 7
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/itu_t4/a;->flush()V

    goto :goto_3

    :cond_2
    if-gt v4, p1, :cond_3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecoverable row length error in image row "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/itu_t4/a;->b()[B

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    :try_start_4
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/itu_t4/a;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_7
    invoke-virtual {v1}, Lorg/apache/commons/imaging/common/itu_t4/a;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p0

    :try_start_a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p1

    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Error reading image to decompress"

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decompressT4_1D([BIIZ)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/b;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/b;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/a;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_5

    .line 3
    :try_start_0
    sget-object v3, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->c:Lorg/apache/commons/imaging/common/itu_t4/c;

    invoke-virtual {v3, v0}, Lorg/apache/commons/imaging/common/itu_t4/c;->a(Lorg/apache/commons/imaging/common/itu_t4/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 4
    invoke-static {v3, p3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->e(Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    .line 5
    invoke-static {v0, v4}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->h(Lorg/apache/commons/imaging/common/itu_t4/b;I)I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_0

    .line 6
    invoke-virtual {p0, v4}, Lorg/apache/commons/imaging/common/itu_t4/a;->c(I)V
    :try_end_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    rsub-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v5

    goto :goto_1

    :cond_1
    if-ne v3, p1, :cond_2

    .line 7
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->flush()V

    goto :goto_3

    :cond_2
    if-gt v3, p1, :cond_3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecoverable row length error in image row "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_4
    :try_start_2
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Expected EOL not found"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lorg/apache/commons/imaging/common/itu_t4/d; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_3
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    const-string p3, "Decompression error"

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->b()[B

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
.end method

.method public static decompressT4_2D([BIIZ)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/b;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/b;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/a;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;-><init>()V

    .line 3
    :try_start_0
    new-array v1, p1, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_10

    .line 4
    :try_start_1
    sget-object v4, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->c:Lorg/apache/commons/imaging/common/itu_t4/c;

    invoke-virtual {v4, v0}, Lorg/apache/commons/imaging/common/itu_t4/c;->a(Lorg/apache/commons/imaging/common/itu_t4/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 5
    invoke-static {v4, p3}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->e(Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;Z)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v0, v4}, Lorg/apache/commons/imaging/common/itu_t4/b;->b(I)I

    move-result v5

    if-nez v5, :cond_a

    .line 7
    invoke-static {v1, v2, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    .line 8
    invoke-static {v1, v4, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v7, p1, :cond_c

    .line 9
    sget-object v8, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->c:Lorg/apache/commons/imaging/common/itu_t4/c;

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/itu_t4/c;->a(Lorg/apache/commons/imaging/common/itu_t4/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 10
    sget-object v10, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->n:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v10, :cond_0

    .line 11
    invoke-static {p0, v1, v7, v6, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->d(Lorg/apache/commons/imaging/common/itu_t4/a;[IIII)V

    :goto_2
    move v8, v6

    goto :goto_4

    .line 12
    :cond_0
    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->o:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v6, :cond_1

    .line 13
    invoke-static {v0, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->h(Lorg/apache/commons/imaging/common/itu_t4/b;I)I

    move-result v5

    add-int/2addr v5, v7

    .line 14
    invoke-static {p0, v1, v7, v5, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->d(Lorg/apache/commons/imaging/common/itu_t4/a;[IIII)V

    rsub-int/lit8 v6, v9, 0x1

    .line 15
    invoke-static {v0, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->h(Lorg/apache/commons/imaging/common/itu_t4/b;I)I

    move-result v7

    add-int/2addr v7, v5

    .line 16
    invoke-static {p0, v1, v5, v7, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->d(Lorg/apache/commons/imaging/common/itu_t4/a;[IIII)V

    move v8, v7

    goto :goto_4

    .line 17
    :cond_1
    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->p:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v6, :cond_2

    const/4 v6, 0x0

    goto :goto_3

    .line 18
    :cond_2
    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->t:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v6, :cond_3

    const/4 v6, -0x1

    goto :goto_3

    .line 19
    :cond_3
    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->u:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v6, :cond_4

    const/4 v6, -0x2

    goto :goto_3

    .line 20
    :cond_4
    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->v:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v6, :cond_5

    const/4 v6, -0x3

    goto :goto_3

    .line 21
    :cond_5
    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->q:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    .line 22
    :cond_6
    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->r:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v6, :cond_7

    const/4 v6, 0x2

    goto :goto_3

    .line 23
    :cond_7
    sget-object v6, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->s:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v6, :cond_9

    const/4 v6, 0x3

    :goto_3
    add-int/2addr v6, v5

    .line 24
    invoke-static {p0, v1, v7, v6, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->d(Lorg/apache/commons/imaging/common/itu_t4/a;[IIII)V

    rsub-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 25
    :goto_4
    invoke-static {v1, v8}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->a([II)I

    move-result v5

    if-ne v9, v5, :cond_8

    add-int/lit8 v6, v8, 0x1

    .line 26
    invoke-static {v1, v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v8, 0x1

    .line 27
    invoke-static {v1, v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v6

    rsub-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v4

    .line 28
    invoke-static {v1, v5, v6}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    :goto_5
    rsub-int/lit8 v6, v9, 0x1

    add-int/lit8 v7, v5, 0x1

    .line 29
    invoke-static {v1, v6, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v6

    move v7, v8

    goto :goto_1

    .line 30
    :cond_9
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid/unknown T.4 control code "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v8, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_6
    if-ge v8, p1, :cond_c

    .line 31
    invoke-static {v0, v4}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->h(Lorg/apache/commons/imaging/common/itu_t4/b;I)I

    move-result v5

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_b

    .line 32
    invoke-virtual {p0, v4}, Lorg/apache/commons/imaging/common/itu_t4/a;->c(I)V

    add-int v7, v8, v6

    .line 33
    aput v4, v1, v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/commons/imaging/common/itu_t4/d; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    rsub-int/lit8 v4, v4, 0x1

    add-int/2addr v8, v5

    goto :goto_6

    :cond_c
    if-ne v8, p1, :cond_d

    .line 34
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->flush()V

    goto :goto_8

    :cond_d
    if-gt v8, p1, :cond_e

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 35
    :cond_e
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unrecoverable row length error in image row "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :cond_f
    :try_start_3
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Expected EOL not found"

    invoke-direct {p1, p2}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/commons/imaging/common/itu_t4/d; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception p1

    goto :goto_9

    :catch_1
    move-exception p1

    .line 37
    :goto_9
    :try_start_4
    new-instance p2, Lorg/apache/commons/imaging/ImageReadException;

    const-string p3, "Decompression error"

    invoke-direct {p2, p3, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 38
    :cond_10
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->b()[B

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 40
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw p1
.end method

.method public static decompressT6([BII)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/b;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/commons/imaging/common/itu_t4/b;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance p0, Lorg/apache/commons/imaging/common/itu_t4/a;

    invoke-direct {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;-><init>()V

    .line 3
    new-array v1, p1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_d

    .line 4
    :try_start_0
    invoke-static {v1, v2, v2}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    .line 5
    invoke-static {v1, v6, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v7, p1, :cond_a

    .line 6
    sget-object v8, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->c:Lorg/apache/commons/imaging/common/itu_t4/c;

    invoke-virtual {v8, v0}, Lorg/apache/commons/imaging/common/itu_t4/c;->a(Lorg/apache/commons/imaging/common/itu_t4/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 7
    sget-object v10, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->n:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v10, :cond_0

    .line 8
    invoke-static {p0, v1, v7, v5, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->d(Lorg/apache/commons/imaging/common/itu_t4/a;[IIII)V

    :goto_2
    move v8, v5

    goto :goto_4

    .line 9
    :cond_0
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->o:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_1

    .line 10
    invoke-static {v0, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->h(Lorg/apache/commons/imaging/common/itu_t4/b;I)I

    move-result v4

    add-int/2addr v4, v7

    .line 11
    invoke-static {p0, v1, v7, v4, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->d(Lorg/apache/commons/imaging/common/itu_t4/a;[IIII)V

    rsub-int/lit8 v5, v9, 0x1

    .line 12
    invoke-static {v0, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->h(Lorg/apache/commons/imaging/common/itu_t4/b;I)I

    move-result v7

    add-int/2addr v7, v4

    .line 13
    invoke-static {p0, v1, v4, v7, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->d(Lorg/apache/commons/imaging/common/itu_t4/a;[IIII)V

    move v8, v7

    goto :goto_4

    .line 14
    :cond_1
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->p:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    .line 15
    :cond_2
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->t:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_3

    const/4 v5, -0x1

    goto :goto_3

    .line 16
    :cond_3
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->u:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_4

    const/4 v5, -0x2

    goto :goto_3

    .line 17
    :cond_4
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->v:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_5

    const/4 v5, -0x3

    goto :goto_3

    .line 18
    :cond_5
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->q:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    .line 19
    :cond_6
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->r:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_7

    const/4 v5, 0x2

    goto :goto_3

    .line 20
    :cond_7
    sget-object v5, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->s:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne v8, v5, :cond_9

    const/4 v5, 0x3

    :goto_3
    add-int/2addr v5, v4

    .line 21
    invoke-static {p0, v1, v7, v5, v9}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->d(Lorg/apache/commons/imaging/common/itu_t4/a;[IIII)V

    rsub-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 22
    :goto_4
    invoke-static {v1, v8}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->a([II)I

    move-result v4

    if-ne v9, v4, :cond_8

    add-int/lit8 v5, v8, 0x1

    .line 23
    invoke-static {v1, v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v4

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v8, 0x1

    .line 24
    invoke-static {v1, v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    rsub-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v6

    .line 25
    invoke-static {v1, v4, v5}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v4

    :goto_5
    rsub-int/lit8 v5, v9, 0x1

    add-int/lit8 v7, v4, 0x1

    .line 26
    invoke-static {v1, v5, v7}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->g([III)I

    move-result v5

    move v7, v8

    goto :goto_1

    .line 27
    :cond_9
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid/unknown T.6 control code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v8, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/d; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    if-ne v8, p1, :cond_b

    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->flush()V

    goto :goto_6

    :cond_b
    if-gt v8, p1, :cond_c

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 29
    :cond_c
    new-instance p0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecoverable row length error in image row "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 30
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string p2, "Decompression error"

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 31
    :cond_d
    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/itu_t4/a;->b()[B

    move-result-object p0

    return-object p0
.end method

.method private static e(Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;Z)Z
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->f:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 2
    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->g:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->h:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->i:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->j:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->k:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->l:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-eq p0, p1, :cond_2

    sget-object p1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->m:Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :cond_3
    return v0
.end method

.method private static f([Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;I)Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;
    .locals 5

    .line 1
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :cond_0
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 2
    aget-object v3, p0, v2

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p1, :cond_2

    add-int/lit8 v3, v2, 0x1

    array-length v4, p0

    if-ge v3, v4, :cond_1

    aget-object v3, p0, v3

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->b:Ljava/lang/Integer;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 4
    :cond_1
    aget-object p0, p0, v2

    return-object p0

    .line 5
    :cond_2
    aget-object v3, p0, v2

    iget-object v3, v3, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, p1, :cond_3

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    :goto_0
    if-lt v1, v0, :cond_0

    .line 6
    aget-object p0, p0, v1

    return-object p0
.end method

.method private static g([III)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_0

    aget v0, p0, p2

    if-ne v0, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    array-length p0, p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static h(Lorg/apache/commons/imaging/common/itu_t4/b;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    :try_start_0
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->a:Lorg/apache/commons/imaging/common/itu_t4/c;

    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/c;->a(Lorg/apache/commons/imaging/common/itu_t4/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    .line 2
    :cond_1
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->b:Lorg/apache/commons/imaging/common/itu_t4/c;

    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/c;->a(Lorg/apache/commons/imaging/common/itu_t4/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Lorg/apache/commons/imaging/common/itu_t4/d; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_0

    return v0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Lorg/apache/commons/imaging/ImageReadException;

    const-string v0, "Decompression error"

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static i(Lorg/apache/commons/imaging/common/itu_t4/a;II)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->c:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 2
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->a:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->d:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    .line 4
    sget-object v0, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->b:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    :goto_0
    const/16 v1, 0x700

    if-lt p1, v1, :cond_1

    .line 5
    sget-object v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables;->e:[Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    invoke-static {v1, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->f([Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;I)Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    .line 7
    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0x40

    if-lt p1, v1, :cond_2

    .line 8
    invoke-static {p2, p1}, Lorg/apache/commons/imaging/common/itu_t4/T4AndT6Compression;->f([Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;I)Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    .line 10
    iget-object v1, v1, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_1

    .line 11
    :cond_2
    aget-object p1, v0, p1

    .line 12
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/itu_t4/T4_T6_Tables$Entry;->writeBits(Lorg/apache/commons/imaging/common/itu_t4/a;)V

    return-void
.end method
