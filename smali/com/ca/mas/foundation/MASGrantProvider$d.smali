.class final Lcom/ca/mas/foundation/MASGrantProvider$d;
.super Ljava/lang/Object;
.source "MASGrantProvider.java"

# interfaces
.implements Lcom/ca/mas/core/util/Functions$Unary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/foundation/MASGrantProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ca/mas/core/util/Functions$Unary<",
        "Lcom/ca/mas/foundation/MASAuthCredentials;",
        "Lcom/ca/mas/core/context/MssoContext;",
        ">;"
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
.method public a(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASAuthCredentials;
    .locals 0

    .line 1
    new-instance p1, Lcom/ca/mas/foundation/MASAuthCredentialsClientCredentials;

    invoke-direct {p1}, Lcom/ca/mas/foundation/MASAuthCredentialsClientCredentials;-><init>()V

    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASGrantProvider$d;->a(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASAuthCredentials;

    move-result-object p1

    return-object p1
.end method
