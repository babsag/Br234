.class public interface abstract Lcom/ca/mas/core/conf/ConfigurationProvider;
.super Ljava/lang/Object;
.source "ConfigurationProvider.java"

# interfaces
.implements Lcom/ca/mas/core/cert/TrustedCertificateConfiguration;
.implements Lcom/ca/mas/core/MobileSsoConfig;


# static fields
.field public static final PROP_LOCATION_MIN_DISTANCE:Ljava/lang/String; = "msso.location.min.distance"

.field public static final PROP_LOCATION_MIN_TIME:Ljava/lang/String; = "msso.location.min.time"


# virtual methods
.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getClientScope()Ljava/lang/String;
.end method

.method public abstract getClientSecret()Ljava/lang/String;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getRaw()Lorg/json/JSONObject;
.end method

.method public abstract getServer()Lcom/ca/mas/core/conf/Server;
.end method

.method public abstract getTokenHost()Ljava/lang/String;
.end method

.method public abstract getTokenPort()I
.end method

.method public abstract getTokenUri(Ljava/lang/String;)Ljava/net/URI;
.end method

.method public abstract getUri(Ljava/lang/String;)Ljava/net/URI;
.end method

.method public abstract getUserInfoUri()Ljava/net/URI;
.end method
