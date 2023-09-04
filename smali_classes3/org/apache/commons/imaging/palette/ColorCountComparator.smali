.class public Lorg/apache/commons/imaging/palette/ColorCountComparator;
.super Ljava/lang/Object;
.source "ColorCountComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/imaging/palette/c;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/imaging/palette/b;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/palette/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/ColorCountComparator;->a:Lorg/apache/commons/imaging/palette/b;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/imaging/palette/c;

    check-cast p2, Lorg/apache/commons/imaging/palette/c;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/palette/ColorCountComparator;->compare(Lorg/apache/commons/imaging/palette/c;Lorg/apache/commons/imaging/palette/c;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/imaging/palette/c;Lorg/apache/commons/imaging/palette/c;)I
    .locals 2

    .line 2
    sget-object v0, Lorg/apache/commons/imaging/palette/ColorCountComparator$a;->a:[I

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorCountComparator;->a:Lorg/apache/commons/imaging/palette/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget p1, p1, Lorg/apache/commons/imaging/palette/c;->f:I

    iget p2, p2, Lorg/apache/commons/imaging/palette/c;->f:I

    :goto_0
    sub-int/2addr p1, p2

    return p1

    .line 4
    :cond_1
    iget p1, p1, Lorg/apache/commons/imaging/palette/c;->e:I

    iget p2, p2, Lorg/apache/commons/imaging/palette/c;->e:I

    goto :goto_0

    .line 5
    :cond_2
    iget p1, p1, Lorg/apache/commons/imaging/palette/c;->d:I

    iget p2, p2, Lorg/apache/commons/imaging/palette/c;->d:I

    goto :goto_0

    .line 6
    :cond_3
    iget p1, p1, Lorg/apache/commons/imaging/palette/c;->c:I

    iget p2, p2, Lorg/apache/commons/imaging/palette/c;->c:I

    goto :goto_0
.end method
