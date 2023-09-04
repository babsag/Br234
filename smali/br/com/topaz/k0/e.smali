.class public Lbr/com/topaz/k0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lbr/com/topaz/k0/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbr/com/topaz/k0/e;->a:Ljava/util/HashMap;

    return-void
.end method

.method private b(Ljava/lang/String;)Lbr/com/topaz/k0/d;
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/k0/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/k0/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbr/com/topaz/k0/d;

    return-object p1

    :cond_0
    invoke-static {p1}, Lbr/com/topaz/k0/g;->a(Ljava/lang/String;)Lbr/com/topaz/k0/d;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/k0/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lbr/com/topaz/k0/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbr/com/topaz/k0/e;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbr/com/topaz/k0/e;->b(Ljava/lang/String;)Lbr/com/topaz/k0/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lbr/com/topaz/k0/d;->a(Ljava/lang/String;)V

    return-void
.end method
