.class Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$c;
.super Lcom/ca/mas/foundation/MASAuthCredentialsPassword;
.source "BrbCaMasPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;->d(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;


# direct methods
.method constructor <init>(Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "username",
            "password",
            "val$grantType",
            "val$sessionId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$c;->e:Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin;

    iput-object p4, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$c;->c:Ljava/lang/String;

    iput-object p5, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$c;->d:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/ca/mas/foundation/MASAuthCredentialsPassword;-><init>(Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public getGrantType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/ca/mas/foundation/MASAuthCredentialsPassword;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$c;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 5
    :goto_0
    iget-object v1, p0, Lbr/com/brb/brb_ca_mas/BrbCaMasPlugin$c;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "X-SESSION-ID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
