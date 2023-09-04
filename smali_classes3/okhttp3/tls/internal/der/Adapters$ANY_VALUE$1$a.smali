.class final Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1$a;
.super Lkotlin/jvm/internal/Lambda;
.source "Adapters.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;->toDer(Lokhttp3/tls/internal/der/DerWriter;Lokhttp3/tls/internal/der/AnyValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lokio/BufferedSink;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lokhttp3/tls/internal/der/DerWriter;

.field final synthetic c:Lokhttp3/tls/internal/der/AnyValue;


# direct methods
.method constructor <init>(Lokhttp3/tls/internal/der/DerWriter;Lokhttp3/tls/internal/der/AnyValue;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1$a;->b:Lokhttp3/tls/internal/der/DerWriter;

    iput-object p2, p0, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1$a;->c:Lokhttp3/tls/internal/der/AnyValue;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lokio/BufferedSink;)V
    .locals 1
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1$a;->b:Lokhttp3/tls/internal/der/DerWriter;

    iget-object v0, p0, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1$a;->c:Lokhttp3/tls/internal/der/AnyValue;

    invoke-virtual {v0}, Lokhttp3/tls/internal/der/AnyValue;->getBytes()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/tls/internal/der/DerWriter;->writeOctetString(Lokio/ByteString;)V

    .line 2
    iget-object p1, p0, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1$a;->b:Lokhttp3/tls/internal/der/DerWriter;

    iget-object v0, p0, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1$a;->c:Lokhttp3/tls/internal/der/AnyValue;

    invoke-virtual {v0}, Lokhttp3/tls/internal/der/AnyValue;->getConstructed()Z

    move-result v0

    invoke-virtual {p1, v0}, Lokhttp3/tls/internal/der/DerWriter;->setConstructed(Z)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1$a;->a(Lokio/BufferedSink;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
