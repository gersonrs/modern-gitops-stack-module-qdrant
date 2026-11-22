locals {
  domain      = format("qdrant.%s", trimprefix("${var.subdomain}.${var.base_domain}", "."))
  domain_full = format("qdrant.%s.%s", trimprefix("${var.subdomain}.${var.cluster_name}", "."), var.base_domain)

  helm_values = [{
    qdrant = {
      replicaCount = 3

      env = [
        {
          name  = "QDRANT__STORAGE__PERFORMANCE__OPTIMIZER_CPU_BUDGET"
          value = 8
        },
        {
          name  = "QDRANT__STORAGE__PERFORMANCE__MAX_SEARCH_THREADS"
          value = 8
        }

      ]

      # Exposure is handled by the HTTPRoute below, served by the Istio
      # gateway, so the chart's own Ingress stays disabled.
      ingress = {
        enabled = false
      }

      resources = {
        limits = {
          cpu    = 8
          memory = "20Gi"
        }
        requests = {
          cpu    = 1
          memory = "1Gi"
        }
      }

      persistence = {
        size = "10Gi"
      }

      config = {
        cluster = {
          enabled = true
        }
        performance = {
          max_search_threads       = 8
          max_optimization_threads = 0
          optimizer_cpu_budget     = 8
          update_rate_limit        = null
        }
      }

      metrics = {
        serviceMonitor = {
          enabled = var.enable_service_monitor
        }
      }

      apiKey         = true
      readOnlyApiKey = true
    }
  }]

  helm_values_httproute = [{
    httproute = {
      enabled           = true
      host              = local.domain
      gateway_name      = var.gateway_name
      gateway_namespace = var.gateway_namespace
    }
  }]
}
