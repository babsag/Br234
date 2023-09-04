.class public Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;
.super Ljava/lang/Object;
.source "LongestAxisMedianCut.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/MedianCut;


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/imaging/palette/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/palette/a;->a:Lorg/apache/commons/imaging/palette/a;

    sput-object v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/apache/commons/imaging/palette/d;Lorg/apache/commons/imaging/palette/b;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/palette/d;",
            "Lorg/apache/commons/imaging/palette/b;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/d;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/imaging/palette/d;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/apache/commons/imaging/palette/ColorCountComparator;

    invoke-direct {v1, p2}, Lorg/apache/commons/imaging/palette/ColorCountComparator;-><init>(Lorg/apache/commons/imaging/palette/b;)V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 3
    iget v1, p1, Lorg/apache/commons/imaging/palette/d;->s:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/imaging/palette/c;

    .line 6
    iget v6, v6, Lorg/apache/commons/imaging/palette/c;->b:I

    add-int/2addr v4, v6

    if-lt v4, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v3, v6, :cond_2

    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_2
    if-lez v3, :cond_3

    sub-int/2addr v4, v2

    .line 8
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v2, v5

    .line 9
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v4, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    :goto_3
    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    add-int/lit8 v4, v3, 0x1

    .line 12
    invoke-interface {v0, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 15
    invoke-interface {v0, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    new-instance v4, Lorg/apache/commons/imaging/palette/d;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v4, v5, p4}, Lorg/apache/commons/imaging/palette/d;-><init>(Ljava/util/List;Z)V

    .line 17
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v2, Lorg/apache/commons/imaging/palette/d;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v5, p4}, Lorg/apache/commons/imaging/palette/d;-><init>(Ljava/util/List;Z)V

    .line 19
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/imaging/palette/c;

    .line 21
    sget-object p4, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    if-eq p4, v7, :cond_7

    const/4 v0, 0x2

    if-eq p4, v0, :cond_6

    const/4 v0, 0x3

    if-eq p4, v0, :cond_5

    const/4 v0, 0x4

    if-ne p4, v0, :cond_4

    .line 22
    iget p3, p3, Lorg/apache/commons/imaging/palette/c;->f:I

    goto :goto_4

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/Error;

    const-string p2, "Bad mode."

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_5
    iget p3, p3, Lorg/apache/commons/imaging/palette/c;->e:I

    goto :goto_4

    .line 25
    :cond_6
    iget p3, p3, Lorg/apache/commons/imaging/palette/c;->d:I

    goto :goto_4

    .line 26
    :cond_7
    iget p3, p3, Lorg/apache/commons/imaging/palette/c;->c:I

    .line 27
    :goto_4
    new-instance p4, Lorg/apache/commons/imaging/palette/e;

    invoke-direct {p4, v4, v2, p2, p3}, Lorg/apache/commons/imaging/palette/e;-><init>(Lorg/apache/commons/imaging/palette/d;Lorg/apache/commons/imaging/palette/d;Lorg/apache/commons/imaging/palette/b;I)V

    iput-object p4, p1, Lorg/apache/commons/imaging/palette/d;->a:Lorg/apache/commons/imaging/palette/e;

    return-void
.end method

.method static synthetic b(Lorg/apache/commons/imaging/palette/d;Lorg/apache/commons/imaging/palette/d;)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/palette/d;->q:I

    iget v1, p1, Lorg/apache/commons/imaging/palette/d;->q:I

    if-ne v0, v1, :cond_0

    .line 2
    iget p1, p1, Lorg/apache/commons/imaging/palette/d;->r:I

    iget p0, p0, Lorg/apache/commons/imaging/palette/d;->r:I

    sub-int/2addr p1, p0

    return p1

    :cond_0
    sub-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public performNextMedianCut(Ljava/util/List;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/d;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->a:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/palette/d;

    .line 3
    iget v2, v1, Lorg/apache/commons/imaging/palette/d;->q:I

    if-nez v2, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 4
    iget v0, v1, Lorg/apache/commons/imaging/palette/d;->m:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/d;->n:I

    if-le v0, v2, :cond_1

    iget v2, v1, Lorg/apache/commons/imaging/palette/d;->o:I

    if-le v0, v2, :cond_1

    iget v2, v1, Lorg/apache/commons/imaging/palette/d;->p:I

    if-le v0, v2, :cond_1

    .line 5
    sget-object v0, Lorg/apache/commons/imaging/palette/b;->ALPHA:Lorg/apache/commons/imaging/palette/b;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->a(Lorg/apache/commons/imaging/palette/d;Lorg/apache/commons/imaging/palette/b;Ljava/util/List;Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget v0, v1, Lorg/apache/commons/imaging/palette/d;->n:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/d;->o:I

    if-le v0, v2, :cond_2

    iget v3, v1, Lorg/apache/commons/imaging/palette/d;->p:I

    if-le v0, v3, :cond_2

    .line 7
    sget-object v0, Lorg/apache/commons/imaging/palette/b;->RED:Lorg/apache/commons/imaging/palette/b;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->a(Lorg/apache/commons/imaging/palette/d;Lorg/apache/commons/imaging/palette/b;Ljava/util/List;Z)V

    goto :goto_0

    .line 8
    :cond_2
    iget v0, v1, Lorg/apache/commons/imaging/palette/d;->p:I

    if-le v2, v0, :cond_3

    .line 9
    sget-object v0, Lorg/apache/commons/imaging/palette/b;->GREEN:Lorg/apache/commons/imaging/palette/b;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->a(Lorg/apache/commons/imaging/palette/d;Lorg/apache/commons/imaging/palette/b;Ljava/util/List;Z)V

    goto :goto_0

    .line 10
    :cond_3
    sget-object v0, Lorg/apache/commons/imaging/palette/b;->BLUE:Lorg/apache/commons/imaging/palette/b;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->a(Lorg/apache/commons/imaging/palette/d;Lorg/apache/commons/imaging/palette/b;Ljava/util/List;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
