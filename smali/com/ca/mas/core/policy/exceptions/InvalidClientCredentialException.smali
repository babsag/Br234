.class public Lcom/ca/mas/core/policy/exceptions/InvalidClientCredentialException;
.super Lcom/ca/mas/core/policy/exceptions/RetryRequestException;
.source "InvalidClientCredentialException.java"


# static fields
.field public static final INVALID_CLIENT_CREDENTIAL_SUFFIX:Ljava/lang/String; = "201"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ca/mas/core/policy/exceptions/RetryRequestException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ca/mas/core/policy/exceptions/RetryRequestException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ca/mas/core/policy/exceptions/RetryRequestException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public recover(Lcom/ca/mas/core/context/MssoContext;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->clearAccessToken()V

    .line 2
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->clearClientCredentials()V

    return-void
.end method
