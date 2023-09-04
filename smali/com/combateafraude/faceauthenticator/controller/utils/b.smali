.class public final synthetic Lcom/combateafraude/faceauthenticator/controller/utils/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/sentry/Sentry$OptionsConfiguration;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/utils/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/combateafraude/faceauthenticator/controller/utils/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final configure(Lio/sentry/SentryOptions;)V
    .locals 2

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/controller/utils/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/utils/b;->b:Ljava/lang/String;

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1, p1}, Lcom/combateafraude/faceauthenticator/controller/utils/SentryHelper;->b(Ljava/lang/String;Ljava/lang/String;Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
