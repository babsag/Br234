.class Lorg/apache/commons/imaging/common/itu_t4/c;
.super Ljava/lang/Object;
.source "HuffmanTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/common/itu_t4/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/common/itu_t4/c$b<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/c;->a:Ljava/util/List;

    return-void
.end method

.method private b(I)Lorg/apache/commons/imaging/common/itu_t4/c$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/imaging/common/itu_t4/c$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/c;->a:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/imaging/common/itu_t4/c$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/common/itu_t4/c$b;-><init>(Lorg/apache/commons/imaging/common/itu_t4/c$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/imaging/common/itu_t4/c$b;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lorg/apache/commons/imaging/common/itu_t4/c$b;->a:Z

    return-object p1
.end method


# virtual methods
.method public final a(Lorg/apache/commons/imaging/common/itu_t4/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/common/itu_t4/b;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/common/itu_t4/d;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/c;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/itu_t4/c$b;

    .line 2
    :goto_0
    iget-object v0, v0, Lorg/apache/commons/imaging/common/itu_t4/c$b;->b:Ljava/lang/Object;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/itu_t4/b;->b(I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 4
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v2, "Invalid bit pattern"

    if-ge v1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lorg/apache/commons/imaging/common/itu_t4/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/common/itu_t4/c$b;

    .line 6
    iget-boolean v3, v0, Lorg/apache/commons/imaging/common/itu_t4/c$b;->a:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/common/itu_t4/d;

    invoke-direct {p1, v2}, Lorg/apache/commons/imaging/common/itu_t4/d;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Lorg/apache/commons/imaging/common/itu_t4/d;

    invoke-direct {p1, v2}, Lorg/apache/commons/imaging/common/itu_t4/d;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lorg/apache/commons/imaging/common/itu_t4/d;

    const-string v1, "Error reading stream for huffman tree"

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/imaging/common/itu_t4/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/common/itu_t4/d;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/common/itu_t4/c;->b(I)Lorg/apache/commons/imaging/common/itu_t4/c$b;

    move-result-object v1

    .line 2
    iget-object v2, v1, Lorg/apache/commons/imaging/common/itu_t4/c$b;->b:Ljava/lang/Object;

    const-string v3, "Can\'t add child to a leaf"

    if-nez v2, :cond_3

    move-object v2, v1

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-ne v2, v4, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    .line 5
    :goto_1
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/common/itu_t4/c;->b(I)Lorg/apache/commons/imaging/common/itu_t4/c$b;

    move-result-object v2

    .line 6
    iget-object v4, v2, Lorg/apache/commons/imaging/common/itu_t4/c$b;->b:Ljava/lang/Object;

    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lorg/apache/commons/imaging/common/itu_t4/d;

    invoke-direct {p1, v3}, Lorg/apache/commons/imaging/common/itu_t4/d;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    iput-object p2, v2, Lorg/apache/commons/imaging/common/itu_t4/c$b;->b:Ljava/lang/Object;

    return-void

    .line 9
    :cond_3
    new-instance p1, Lorg/apache/commons/imaging/common/itu_t4/d;

    invoke-direct {p1, v3}, Lorg/apache/commons/imaging/common/itu_t4/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method
