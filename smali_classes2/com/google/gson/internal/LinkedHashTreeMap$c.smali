.class Lcom/google/gson/internal/LinkedHashTreeMap$c;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/gson/internal/LinkedHashTreeMap$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/gson/internal/LinkedHashTreeMap$g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedHashTreeMap$g<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$c;->a:Lcom/google/gson/internal/LinkedHashTreeMap$g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v2, v0, Lcom/google/gson/internal/LinkedHashTreeMap$g;->a:Lcom/google/gson/internal/LinkedHashTreeMap$g;

    .line 3
    iput-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$g;->a:Lcom/google/gson/internal/LinkedHashTreeMap$g;

    .line 4
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$g;->c:Lcom/google/gson/internal/LinkedHashTreeMap$g;

    :goto_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v2, :cond_1

    .line 5
    iput-object v1, v2, Lcom/google/gson/internal/LinkedHashTreeMap$g;->a:Lcom/google/gson/internal/LinkedHashTreeMap$g;

    .line 6
    iget-object v1, v2, Lcom/google/gson/internal/LinkedHashTreeMap$g;->b:Lcom/google/gson/internal/LinkedHashTreeMap$g;

    goto :goto_0

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$c;->a:Lcom/google/gson/internal/LinkedHashTreeMap$g;

    return-object v0
.end method

.method b(Lcom/google/gson/internal/LinkedHashTreeMap$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$g<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 1
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$g;->a:Lcom/google/gson/internal/LinkedHashTreeMap$g;

    .line 2
    iget-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$g;->b:Lcom/google/gson/internal/LinkedHashTreeMap$g;

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    .line 3
    :cond_0
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$c;->a:Lcom/google/gson/internal/LinkedHashTreeMap$g;

    return-void
.end method
