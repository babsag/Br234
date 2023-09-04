.class Lcom/ca/mas/core/policy/a$a;
.super Lcom/ca/mas/core/policy/exceptions/RetryRequestException;
.source "AccessTokenAssertion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/policy/a;->processResponse(Lcom/ca/mas/core/context/MssoContext;Lcom/ca/mas/core/policy/RequestInfo;Lcom/ca/mas/foundation/MASResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ca/mas/core/policy/a;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/policy/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/policy/a$a;->b:Lcom/ca/mas/core/policy/a;

    invoke-direct {p0, p2}, Lcom/ca/mas/core/policy/exceptions/RetryRequestException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public recover(Lcom/ca/mas/core/context/MssoContext;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->clearAccessToken()V

    return-void
.end method
