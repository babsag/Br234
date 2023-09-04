.class public final Lokhttp3/tls/internal/der/Adapters$BIT_STRING$1;
.super Ljava/lang/Object;
.source "Adapters.kt"

# interfaces
.implements Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/tls/internal/der/Adapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokhttp3/tls/internal/der/BasicDerAdapter$Codec<",
        "Lokhttp3/tls/internal/der/BitString;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "okhttp3/tls/internal/der/Adapters$BIT_STRING$1",
        "Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;",
        "Lokhttp3/tls/internal/der/BitString;",
        "Lokhttp3/tls/internal/der/DerReader;",
        "reader",
        "decode",
        "(Lokhttp3/tls/internal/der/DerReader;)Lokhttp3/tls/internal/der/BitString;",
        "Lokhttp3/tls/internal/der/DerWriter;",
        "writer",
        "value",
        "",
        "encode",
        "(Lokhttp3/tls/internal/der/DerWriter;Lokhttp3/tls/internal/der/BitString;)V",
        "okhttp-tls"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/Adapters$BIT_STRING$1;->decode(Lokhttp3/tls/internal/der/DerReader;)Lokhttp3/tls/internal/der/BitString;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lokhttp3/tls/internal/der/DerReader;)Lokhttp3/tls/internal/der/BitString;
    .locals 1
    .param p1    # Lokhttp3/tls/internal/der/DerReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->readBitString()Lokhttp3/tls/internal/der/BitString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic encode(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lokhttp3/tls/internal/der/BitString;

    invoke-virtual {p0, p1, p2}, Lokhttp3/tls/internal/der/Adapters$BIT_STRING$1;->encode(Lokhttp3/tls/internal/der/DerWriter;Lokhttp3/tls/internal/der/BitString;)V

    return-void
.end method

.method public encode(Lokhttp3/tls/internal/der/DerWriter;Lokhttp3/tls/internal/der/BitString;)V
    .locals 1
    .param p1    # Lokhttp3/tls/internal/der/DerWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/tls/internal/der/BitString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Lokhttp3/tls/internal/der/DerWriter;->writeBitString(Lokhttp3/tls/internal/der/BitString;)V

    return-void
.end method
