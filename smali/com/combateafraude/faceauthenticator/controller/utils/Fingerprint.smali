.class public Lcom/combateafraude/faceauthenticator/controller/utils/Fingerprint;
.super Ljava/lang/Object;
.source "Fingerprint.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "fingerprint"

    .line 1
    invoke-static {v0, p0}, Lcom/combateafraude/faceauthenticator/controller/preferences/PreferencesHelper;->getPref(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1, p0}, Lcom/combateafraude/faceauthenticator/controller/preferences/PreferencesHelper;->savePref(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-object v1
.end method
