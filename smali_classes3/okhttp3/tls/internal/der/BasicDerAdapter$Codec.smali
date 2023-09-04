.class public interface abstract Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;
.super Ljava/lang/Object;
.source "BasicDerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/tls/internal/der/BasicDerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Codec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u00020\u0002J\u0017\u0010\u0005\u001a\u00028\u00012\u0006\u0010\u0004\u001a\u00020\u0003H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00028\u0001H&\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;",
        "T",
        "",
        "Lokhttp3/tls/internal/der/DerReader;",
        "reader",
        "decode",
        "(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;",
        "Lokhttp3/tls/internal/der/DerWriter;",
        "writer",
        "value",
        "",
        "encode",
        "(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V",
        "okhttp-tls"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# virtual methods
.method public abstract decode(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;
    .param p1    # Lokhttp3/tls/internal/der/DerReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/tls/internal/der/DerReader;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract encode(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V
    .param p1    # Lokhttp3/tls/internal/der/DerWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/tls/internal/der/DerWriter;",
            "TT;)V"
        }
    .end annotation
.end method
