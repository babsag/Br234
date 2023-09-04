.class public Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;
.super Ljava/lang/Object;
.source "MASAuthenticationProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/ca/mas/core/service/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$a;

    invoke-direct {v0}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$a;-><init>()V

    sput-object v0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-class v0, Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/core/service/Provider;

    iput-object p1, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->a:Lcom/ca/mas/core/service/Provider;

    return-void
.end method

.method protected constructor <init>(Lcom/ca/mas/core/service/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->a:Lcom/ca/mas/core/service/Provider;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthConfiguration(Landroid/content/Context;Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-virtual {p2}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->getAuthenticationUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->get()Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/ca/mas/foundation/MASResponseBody;->jsonBody()Lcom/ca/mas/foundation/MASResponseBody;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->responseBody(Lcom/ca/mas/foundation/MASResponseBody;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;

    invoke-direct {v0, p1, p2, p3}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider$b;-><init>(Landroid/content/Context;Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public getAuthenticationUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->a:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v0}, Lcom/ca/mas/core/service/Provider;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->a:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v0}, Lcom/ca/mas/core/service/Provider;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPollUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->a:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v0}, Lcom/ca/mas/core/service/Provider;->getPollUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnterprise()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->a:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v0}, Lcom/ca/mas/core/service/Provider;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enterprise"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFacebook()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->a:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v0}, Lcom/ca/mas/core/service/Provider;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGoogle()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->a:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v0}, Lcom/ca/mas/core/service/Provider;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLinkedIn()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->a:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v0}, Lcom/ca/mas/core/service/Provider;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "linkedin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isProximityLogin()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->a:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v0}, Lcom/ca/mas/core/service/Provider;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qrcode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSalesForce()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->a:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {v0}, Lcom/ca/mas/core/service/Provider;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "salesforce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->a:Lcom/ca/mas/core/service/Provider;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
