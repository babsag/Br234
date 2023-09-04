.class Lorg/junit/ComparisonFailure$b$a;
.super Ljava/lang/Object;
.source "ComparisonFailure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/ComparisonFailure$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field final synthetic c:Lorg/junit/ComparisonFailure$b;


# direct methods
.method private constructor <init>(Lorg/junit/ComparisonFailure$b;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lorg/junit/ComparisonFailure$b$a;->c:Lorg/junit/ComparisonFailure$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lorg/junit/ComparisonFailure$b;->a(Lorg/junit/ComparisonFailure$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/ComparisonFailure$b$a;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1, v0}, Lorg/junit/ComparisonFailure$b;->b(Lorg/junit/ComparisonFailure$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/junit/ComparisonFailure$b$a;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/ComparisonFailure$b;Lorg/junit/ComparisonFailure$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/junit/ComparisonFailure$b$a;-><init>(Lorg/junit/ComparisonFailure$b;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/junit/ComparisonFailure$b$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/junit/ComparisonFailure$b$a;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/ComparisonFailure$b$a;->c:Lorg/junit/ComparisonFailure$b;

    invoke-static {v0}, Lorg/junit/ComparisonFailure$b;->d(Lorg/junit/ComparisonFailure$b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/ComparisonFailure$b$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/junit/ComparisonFailure$b$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/junit/ComparisonFailure$b$a;->c:Lorg/junit/ComparisonFailure$b;

    invoke-static {v1}, Lorg/junit/ComparisonFailure$b;->e(Lorg/junit/ComparisonFailure$b;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/junit/ComparisonFailure$b$a;->a:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/junit/ComparisonFailure$b$a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/junit/ComparisonFailure$b$a;->c:Lorg/junit/ComparisonFailure$b;

    invoke-static {v3}, Lorg/junit/ComparisonFailure$b;->e(Lorg/junit/ComparisonFailure$b;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/junit/ComparisonFailure$b$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/junit/ComparisonFailure$b$a;->c:Lorg/junit/ComparisonFailure$b;

    invoke-static {v1}, Lorg/junit/ComparisonFailure$b;->e(Lorg/junit/ComparisonFailure$b;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/junit/ComparisonFailure$b$a;->b:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/junit/ComparisonFailure$b$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/junit/ComparisonFailure$b$a;->c:Lorg/junit/ComparisonFailure$b;

    invoke-static {v3}, Lorg/junit/ComparisonFailure$b;->e(Lorg/junit/ComparisonFailure$b;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/junit/ComparisonFailure$b$a;->c:Lorg/junit/ComparisonFailure$b;

    invoke-static {v0}, Lorg/junit/ComparisonFailure$b;->c(Lorg/junit/ComparisonFailure$b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/ComparisonFailure$b$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
