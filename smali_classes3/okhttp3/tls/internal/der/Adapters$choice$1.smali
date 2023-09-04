.class public final Lokhttp3/tls/internal/der/Adapters$choice$1;
.super Ljava/lang/Object;
.source "Adapters.kt"

# interfaces
.implements Lokhttp3/tls/internal/der/DerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/tls/internal/der/Adapters;->choice([Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/DerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokhttp3/tls/internal/der/DerAdapter<",
        "Lkotlin/Pair<",
        "+",
        "Lokhttp3/tls/internal/der/DerAdapter<",
        "*>;+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u001a\u0012\u0016\u0012\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J)\u0010\u000b\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ1\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0018\u0010\u000f\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "okhttp3/tls/internal/der/Adapters$choice$1",
        "Lokhttp3/tls/internal/der/DerAdapter;",
        "Lkotlin/Pair;",
        "",
        "Lokhttp3/tls/internal/der/DerHeader;",
        "header",
        "",
        "matches",
        "(Lokhttp3/tls/internal/der/DerHeader;)Z",
        "Lokhttp3/tls/internal/der/DerReader;",
        "reader",
        "fromDer",
        "(Lokhttp3/tls/internal/der/DerReader;)Lkotlin/Pair;",
        "Lokhttp3/tls/internal/der/DerWriter;",
        "writer",
        "value",
        "",
        "toDer",
        "(Lokhttp3/tls/internal/der/DerWriter;Lkotlin/Pair;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "okhttp-tls"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:[Lokhttp3/tls/internal/der/DerAdapter;


# direct methods
.method constructor <init>([Lokhttp3/tls/internal/der/DerAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/tls/internal/der/Adapters$choice$1;->a:[Lokhttp3/tls/internal/der/DerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asSequenceOf(Ljava/lang/String;IJ)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->asSequenceOf(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/String;IJ)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public asSetOf()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->asSetOf(Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/Adapters$choice$1;->fromDer(Lokhttp3/tls/internal/der/DerReader;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fromDer(Lokio/ByteString;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/Adapters$choice$1;->fromDer(Lokio/ByteString;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public fromDer(Lokhttp3/tls/internal/der/DerReader;)Lkotlin/Pair;
    .locals 6
    .param p1    # Lokhttp3/tls/internal/der/DerReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/tls/internal/der/DerReader;",
            ")",
            "Lkotlin/Pair<",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->peekHeader()Lokhttp3/tls/internal/der/DerHeader;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v1, p0, Lokhttp3/tls/internal/der/Adapters$choice$1;->a:[Lokhttp3/tls/internal/der/DerAdapter;

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 7
    invoke-interface {v4, v0}, Lokhttp3/tls/internal/der/DerAdapter;->matches(Lokhttp3/tls/internal/der/DerHeader;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 8
    invoke-interface {v4, p1}, Lokhttp3/tls/internal/der/DerAdapter;->fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    new-instance v1, Ljava/net/ProtocolException;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected a matching choice but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-direct {v1, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected a value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fromDer(Lokio/ByteString;)Lkotlin/Pair;
    .locals 1
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            ")",
            "Lkotlin/Pair<",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->fromDer(Lokhttp3/tls/internal/der/DerAdapter;Lokio/ByteString;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    return-object p1
.end method

.method public matches(Lokhttp3/tls/internal/der/DerHeader;)Z
    .locals 1
    .param p1    # Lokhttp3/tls/internal/der/DerHeader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic toDer(Ljava/lang/Object;)Lokio/ByteString;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/Adapters$choice$1;->toDer(Lkotlin/Pair;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public toDer(Lkotlin/Pair;)Lokio/ByteString;
    .locals 1
    .param p1    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lokio/ByteString;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->toDer(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/Object;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toDer(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p0, p1, p2}, Lokhttp3/tls/internal/der/Adapters$choice$1;->toDer(Lokhttp3/tls/internal/der/DerWriter;Lkotlin/Pair;)V

    return-void
.end method

.method public toDer(Lokhttp3/tls/internal/der/DerWriter;Lkotlin/Pair;)V
    .locals 2
    .param p1    # Lokhttp3/tls/internal/der/DerWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/Pair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/tls/internal/der/DerWriter;",
            "Lkotlin/Pair<",
            "+",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/tls/internal/der/DerAdapter;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type okhttp3.tls.internal.der.DerAdapter<kotlin.Any?>"

    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, p1, p2}, Lokhttp3/tls/internal/der/DerAdapter;->toDer(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/tls/internal/der/Adapters$choice$1;->a:[Lokhttp3/tls/internal/der/DerAdapter;

    const-string v1, " OR "

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withExplicitBox(IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 0
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Boolean;",
            ")",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Lkotlin/Pair<",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->withExplicitBox(Lokhttp3/tls/internal/der/DerAdapter;IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p1

    return-object p1
.end method
