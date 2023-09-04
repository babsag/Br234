.class public Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;
.super Lcom/ca/mas/foundation/MASMultiFactorHandler;
.source "MASOtpAuthenticationHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler$b;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler$b;-><init>()V

    sput-object v0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ca/mas/foundation/MASMultiFactorHandler;-><init>(J)V

    .line 2
    iput-object p3, p0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->c:Ljava/util/List;

    .line 3
    iput-boolean p4, p0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->d:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/ca/mas/foundation/MASMultiFactorHandler;-><init>(Landroid/os/Parcel;)V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->c:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->d:Z

    return-void
.end method


# virtual methods
.method public deliver(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v0

    const-string v1, "msso.url.auth_otp"

    invoke-interface {v0, v1}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/ca/mas/core/conf/ConfigurationManager;->getInstance()Lcom/ca/mas/core/conf/ConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ca/mas/core/conf/ConfigurationManager;->getConnectedGatewayConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    invoke-direct {v1, v0}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;-><init>(Ljava/net/URI;)V

    const-string v0, "X-OTP-CHANNEL"

    .line 4
    invoke-virtual {v1, v0, p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/ca/mas/foundation/MASRequest$MASRequestBuilder;->build()Lcom/ca/mas/foundation/MASRequest;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler$a;

    invoke-direct {v0, p0, p2}, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler$a;-><init>(Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;Lcom/ca/mas/foundation/MASCallback;)V

    invoke-static {p1, v0}, Lcom/ca/mas/foundation/MAS;->invoke(Lcom/ca/mas/foundation/MASRequest;Lcom/ca/mas/foundation/MASCallback;)J

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->c:Ljava/util/List;

    return-object v0
.end method

.method public isInvalidOtp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->d:Z

    return v0
.end method

.method public proceed(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "X-OTP"

    .line 2
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/ca/mas/foundation/MASMultiFactorHandler;->proceed(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ca/mas/foundation/MASMultiFactorHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->c:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3
    iget-boolean p2, p0, Lcom/ca/mas/foundation/MASOtpAuthenticationHandler;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
