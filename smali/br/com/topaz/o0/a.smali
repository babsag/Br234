.class public Lbr/com/topaz/o0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/o0/a;->a:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Lbr/com/topaz/o0/a;->d:I

    const/4 p1, 0x1

    iput p1, p0, Lbr/com/topaz/o0/a;->b:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/o0/a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o0/a;->d:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/o0/a;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lbr/com/topaz/o0/a;->a()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/o0/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0}, Lbr/com/topaz/o0/a;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    xor-int/2addr p1, v1

    :cond_1
    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/o0/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lbr/com/topaz/o0/a;->b:I

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/o0/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o0/a;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lbr/com/topaz/o0/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lbr/com/topaz/o0/a;

    invoke-virtual {p1}, Lbr/com/topaz/o0/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lbr/com/topaz/o0/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lbr/com/topaz/o0/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
