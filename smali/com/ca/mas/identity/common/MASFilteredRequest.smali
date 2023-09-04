.class public Lcom/ca/mas/identity/common/MASFilteredRequest;
.super Ljava/lang/Object;
.source "MASFilteredRequest.java"

# interfaces
.implements Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
.implements Lcom/ca/mas/identity/common/MASPagination;


# instance fields
.field private a:I

.field private b:I

.field c:Z

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/net/Uri;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field protected mAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mExcludedAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->h:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->i:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->a:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->b:I

    .line 6
    iput-boolean p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->c:Z

    return-void
.end method

.method private a(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/identity/common/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/ca/mas/identity/common/a;-><init>(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/ca/mas/identity/common/a;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->h:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ca/mas/identity/util/IdentityUtil;->normalizeAttributes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_0

    const-string v1, ","

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget v2, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "startIndex=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget v2, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "&count=%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget v1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->a:I

    iget v2, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->a:I

    return-object v0
.end method

.method private d(Ljava/lang/String;Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$SortOrder;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "sortBy=%s"

    .line 2
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x26

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-array p1, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "sortOrder=%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public contains(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->co:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    invoke-direct {p0, v0, p1, p2}, Lcom/ca/mas/identity/common/MASFilteredRequest;->a(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public createCompoundExpression(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASRequest;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 1
    .param p1    # Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/ca/mas/identity/common/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/ca/mas/identity/common/a;-><init>(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASRequest;)V

    .line 2
    invoke-virtual {v0}, Lcom/ca/mas/identity/common/a;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public createUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->g:Landroid/net/Uri;

    if-eqz p1, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->f:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->i:Ljava/lang/String;

    const-string v1, "userAttributesKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/ca/mas/identity/util/IdentityUtil;->getUserPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->i:Ljava/lang/String;

    const-string v1, "groupAttributesKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/ca/mas/identity/util/IdentityUtil;->getGroupPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->mAttributes:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 13
    iget-object v1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->f:Ljava/util/List;

    const-string v2, "attributes"

    invoke-direct {p0, v0, v2}, Lcom/ca/mas/identity/common/MASFilteredRequest;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->mExcludedAttributes:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 15
    iget-object v1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->f:Ljava/util/List;

    const-string v2, "excludedAttributes"

    invoke-direct {p0, v0, v2}, Lcom/ca/mas/identity/common/MASFilteredRequest;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_6
    iget-boolean v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->c:Z

    if-eqz v0, :cond_7

    .line 17
    invoke-direct {p0}, Lcom/ca/mas/identity/common/MASFilteredRequest;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 18
    iget-object v1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    const/16 v0, 0x3f

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 22
    iget-object v1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_9

    const/16 v1, 0x26

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, "%22"

    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    sget-boolean v0, Lcom/ca/mas/foundation/MAS;->DEBUG:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encoded URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_b
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->g:Landroid/net/Uri;

    return-object p1
.end method

.method public endsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->ew:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    invoke-direct {p0, v0, p1, p2}, Lcom/ca/mas/identity/common/MASFilteredRequest;->a(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isEqualTo(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->eq:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    invoke-direct {p0, v0, p1, p2}, Lcom/ca/mas/identity/common/MASFilteredRequest;->a(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isGreaterThan(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->gt:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    invoke-direct {p0, v0, p1, p2}, Lcom/ca/mas/identity/common/MASFilteredRequest;->a(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isGreaterThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->ge:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    invoke-direct {p0, v0, p1, p2}, Lcom/ca/mas/identity/common/MASFilteredRequest;->a(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isLessThan(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->lt:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    invoke-direct {p0, v0, p1, p2}, Lcom/ca/mas/identity/common/MASFilteredRequest;->a(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isLessThanOrEqual(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->le:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    invoke-direct {p0, v0, p1, p2}, Lcom/ca/mas/identity/common/MASFilteredRequest;->a(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isNotEqualTo(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->ne:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    invoke-direct {p0, v0, p1, p2}, Lcom/ca/mas/identity/common/MASFilteredRequest;->a(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public isPresent(Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->pr:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/ca/mas/identity/common/MASFilteredRequest;->a(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setAttributes(Ljava/util/List;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->mExcludedAttributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->mAttributes:Ljava/util/List;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "attributes and excludedAttributes are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExcludedAttributes(Ljava/util/List;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->mAttributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->mExcludedAttributes:Ljava/util/List;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "attributes and excludedAttributes are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPagination(II)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->a:I

    .line 2
    iput p2, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->b:I

    if-lez p2, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->c:Z

    :cond_0
    return-object p0
.end method

.method public setSortOrder(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$SortOrder;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$SortOrder;->ascending:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$SortOrder;

    .line 2
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/ca/mas/identity/common/MASFilteredRequest;->d(Ljava/lang/String;Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$SortOrder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public startsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/identity/common/MASFilteredRequestBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->sw:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    invoke-direct {p0, v0, p1, p2}, Lcom/ca/mas/identity/common/MASFilteredRequest;->a(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/MASFilteredRequest;->e:Ljava/lang/String;

    return-object p0
.end method
