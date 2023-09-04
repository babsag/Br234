.class Lcom/ca/mas/identity/common/a;
.super Ljava/lang/Object;
.source "FilterFormatter.java"


# instance fields
.field private a:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

.field private b:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASRequest;)V
    .locals 0
    .param p1    # Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/identity/common/a;->b:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    .line 3
    invoke-interface {p2}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/a;->e:Ljava/lang/String;

    .line 4
    invoke-interface {p3}, Lcom/ca/mas/foundation/MASRequest;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/common/a;->f:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/ca/mas/identity/common/a;->a:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    .line 7
    iput-object p2, p0, Lcom/ca/mas/identity/common/a;->c:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/ca/mas/identity/common/a;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "startIndex="

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ca/mas/identity/common/a;->e:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ca/mas/identity/common/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/identity/common/a;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%20"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, p0, Lcom/ca/mas/identity/common/a;->b:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Logical;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lcom/ca/mas/identity/common/a;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ca/mas/identity/common/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ca/mas/identity/common/a;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/ca/mas/identity/common/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%20"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/ca/mas/identity/common/a;->a:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Lcom/ca/mas/identity/common/a;->a:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    sget-object v3, Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;->pr:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    if-ne v2, v3, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%22"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v2, p0, Lcom/ca/mas/identity/common/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/common/a;->a:Lcom/ca/mas/identity/common/MASFilteredRequestBuilder$Operator;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ca/mas/identity/common/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/ca/mas/identity/common/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
