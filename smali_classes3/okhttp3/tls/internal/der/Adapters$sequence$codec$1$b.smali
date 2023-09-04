.class final Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$b;
.super Lkotlin/jvm/internal/Lambda;
.source "Adapters.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/tls/internal/der/Adapters$sequence$codec$1;->encode(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lokhttp3/tls/internal/der/Adapters$sequence$codec$1;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lokhttp3/tls/internal/der/DerWriter;


# direct methods
.method constructor <init>(Lokhttp3/tls/internal/der/Adapters$sequence$codec$1;Ljava/util/List;Lokhttp3/tls/internal/der/DerWriter;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$b;->b:Lokhttp3/tls/internal/der/Adapters$sequence$codec$1;

    iput-object p2, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$b;->c:Ljava/util/List;

    iput-object p3, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$b;->d:Lokhttp3/tls/internal/der/DerWriter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$b;->b:Lokhttp3/tls/internal/der/Adapters$sequence$codec$1;

    iget-object v2, v2, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1;->a:[Lokhttp3/tls/internal/der/DerAdapter;

    aget-object v2, v2, v1

    const-string v3, "null cannot be cast to non-null type okhttp3.tls.internal.der.DerAdapter<kotlin.Any?>"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v3, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$b;->d:Lokhttp3/tls/internal/der/DerWriter;

    iget-object v4, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$b;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lokhttp3/tls/internal/der/DerAdapter;->toDer(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$b;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
