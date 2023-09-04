.class final enum Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;
.super Ljava/lang/Enum;
.source "FaceAuthenticatorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

.field public static final enum b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

.field public static final enum c:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

.field public static final enum d:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    const-string v1, "VERIFYING_TOKEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;->a:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;->b:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    const-string v1, "WAIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;->c:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    const-string v1, "CAPTURE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;->d:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
