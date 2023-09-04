.class final Lokhttp3/tls/internal/der/BasicDerAdapter$a;
.super Lkotlin/jvm/internal/Lambda;
.source "BasicDerAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/tls/internal/der/BasicDerAdapter;->toDer(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V
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
.field final synthetic b:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field final synthetic c:Lokhttp3/tls/internal/der/DerWriter;

.field final synthetic d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lokhttp3/tls/internal/der/BasicDerAdapter;Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter$a;->b:Lokhttp3/tls/internal/der/BasicDerAdapter;

    iput-object p2, p0, Lokhttp3/tls/internal/der/BasicDerAdapter$a;->c:Lokhttp3/tls/internal/der/DerWriter;

    iput-object p3, p0, Lokhttp3/tls/internal/der/BasicDerAdapter$a;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lokio/BufferedSink;)V
    .locals 2
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter$a;->b:Lokhttp3/tls/internal/der/BasicDerAdapter;

    invoke-static {p1}, Lokhttp3/tls/internal/der/BasicDerAdapter;->access$getCodec$p(Lokhttp3/tls/internal/der/BasicDerAdapter;)Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/tls/internal/der/BasicDerAdapter$a;->c:Lokhttp3/tls/internal/der/DerWriter;

    iget-object v1, p0, Lokhttp3/tls/internal/der/BasicDerAdapter$a;->d:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;->encode(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/BasicDerAdapter$a;->a(Lokio/BufferedSink;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
